//SPDX-License-Identifier:MIT
pragma solidity ^0.8.11;
contract transfer{
    bool t;
    //function initialisation() public view returns(uint memory){
     //   for(uint i=0;i<=10;i++)
      //  {
     //     uint u_i=i;
      //    string w_i=
       // }
   // }
    function functionname(uint res,uint estv) public pure returns(uint)
    {
        uint val;
        val=res*estv;
        return val+i_val;
    }

    //function sending(string memory e_i,string memory w_i,uint res) public pure returns(uint){
        function constraint(string memory e_i, string memory w_i,uint t_res,uint a_res,uint estv) public pure returns(bool t3) {
        
        bool t1=true;
        bool t2=true;
        if (bytes(e_i).length <= 3 || bytes(w_i).length <= 3) {
            t1= false;
        }
        else{
            for (uint256 i = 0; i <= 3; i++) {
                if (bytes(e_i)[i] != bytes(w_i)[i]) {
                    t1= false;
                }
            }
        }  
            if(t_res>a_res)
            {
                t2=false;
            }
            if(t1&&t2==true)
        {
            t3=true;
            functionname(t_res,estv);
            return t3;
        }
    
    }
    

    
       
}
