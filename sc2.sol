//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

import "./Wallet.sol";

contract Game {
    Wallet public wallet;
    address public owner;

    constructor(address _walletAddress) {
        wallet = Wallet(_walletAddress);
        owner = msg.sender;
    }

    function convertResourcesToTokens(uint256 resourceAmount) external {
        require(resourceAmount > 0, "Resource amount must be greater than zero");
        // Implement your conversion rules here.
        // For simplicity, we'll convert 1 resource to 1 token.
        uint256 tokenAmount = resourceAmount;
        wallet.deposit(tokenAmount);
    }
}
