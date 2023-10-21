//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

contract Wallet {
    address public owner; //variable to store the address of the wallet owner.
    mapping(address => uint256) public balances;//mapping that associates user addresses with their account balances.
    Transaction[] public transactions;//An array to store transaction data in a Transaction struct.

    struct Transaction {
        address sender;
        address receiver;
        uint256 amount;
        uint256 timestamp;
    }

    event Deposit(address indexed sender, uint256 amount);
    event Withdrawal(address indexed receiver, uint256 amount);

    constructor() {
        owner = msg.sender;//The constructor sets the owner of the wallet to the address of the sender
    }

    function deposit(uint256 amount) external payable {
        require(amount > 0, "Amount must be greater than zero");
        balances[msg.sender] += amount;
        transactions.push(Transaction(msg.sender, address(this), amount, block.timestamp));
        emit Deposit(msg.sender, amount);
    }

    function withdraw(uint256 amount) external {
        require(balances[msg.sender] >= amount, "Insufficient balance");
        balances[msg.sender] -= amount;
        payable(msg.sender).transfer(amount);
        transactions.push(Transaction(address(this), msg.sender, amount, block.timestamp));
        emit Withdrawal(msg.sender, amount);
    }

    function getTransactionCount() external view returns (uint256) {
        return transactions.length;
    }
}
