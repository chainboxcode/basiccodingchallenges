// SPDX-License-Identifier: BSD-2-Clause
pragma solidity ^0.8.16;

// This code increments the counter
// In the error code, the counter is incremented until the value 
// and the txn is reverted, so the counter never reaches 3
// The working code places an inequality to test for 3 or tests the value before in the increment.

contract Counter {
    address private owner;
    uint256 private counter;

    constructor() {
        owner = msg.sender;
        counter = 0;
    }

    // Maximum Value of counter should be 3
    function incErr() external {
        require(msg.sender == owner, "Unauthorized");
        counter++;
        if (counter == 3) {
            revert("Counter reached the max value");
        }
    }

    function incEq() external {
        require(msg.sender == owner, "Unauthorized");
    
        if (counter == 3) {
            revert("Counter reached the max value");
        }
        counter++;
    }
    function incGr() external {
        require(msg.sender == owner, "Unauthorized");
        counter++;
        if (counter > 3) {
            revert("Counter reached the max value");
        }
    }

    function getCounter() external view returns (uint256) {
        return counter;
    }
}
