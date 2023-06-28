// SPDX-License-Identifier: BSD-2-Clause
pragma solidity ^0.8.16;

/*
The bitwise operator uses less gas, both functions double the input number
*/
 
contract Test {
    function double(uint8 x) public pure returns (uint8) {
        return x * 2;
    }

    function shiftLeft(uint8 x) public pure returns (uint8) {
        return x << 1;
    }
}

 


