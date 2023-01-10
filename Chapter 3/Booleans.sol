// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

import "hardhat/console.sol";

contract Booleans {
    //2 types signed (int) and unsigned (uint)

    bool public flag;
    
    function changeFlag(bool _flag) public {
        flag = _flag;
    }

    function resetFlag(int _integer) public {
        flag = false;
    }

    function reveal() public view returns(string memory) {
        if (flag) {
            return "ha!";
        }
    }

}
