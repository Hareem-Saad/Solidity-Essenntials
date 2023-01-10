// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

import "hardhat/console.sol";

contract Integers {
    //2 types signed (int) and unsigned (uint)

    int public integer1 = -8;
    int public integer2 = 8;
    uint public uInteger;
    
    function changeInteger1(int _integer) public {
        integer1 = _integer;
    }

    function changeInteger2(int _integer) public {
        integer2 = _integer;
    }

    function changeUInteger1(uint _num) public {
        uInteger = _num;
    }

    function addInt() public view returns(int) {
        return integer1 + integer2;
    }

}
