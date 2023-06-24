// SPDX-License-Identifier: BSD-2-Clause
pragma solidity ^0.8.16;

// The contract should add the first 100 numbers. The addErr function has an error in the upper bound of the loop. 

contract SumOfNumbers {
    uint public num;
    
    function addTested() public {
        for (uint i = 0; i < 101; i++) {
            num += i;
        }
    }

    function addErr() public {
        for (uint i = 0; i < 100; i++) {
            num += i;
        }
    }
}
