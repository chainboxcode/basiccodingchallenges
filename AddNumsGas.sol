// SPDX-License-Identifier: BSD-2-Clause
pragma solidity ^0.8.16;

// This contracts adds up two numbers but one function is payable and one is view only. 
// The view function consumes less gas. 
// Here are the test results - 
// addPayble - gas	29681 gas, transaction cost	25809 gas, execution cost	4745 gas
// addView - execution cost	4747 gas (Cost only applies when called by a contract, otherwise 0 gas when directly called)
// This shows the additional cost is 25809 gas due to the transaction cost.

contract AddNumbers {
    uint public a = 10;
    uint public b = 20;

    function addView() external view returns (uint) {
        return a + b;
    }

    function addPayable() external payable returns (uint) {
        return a + b;
    }
}
