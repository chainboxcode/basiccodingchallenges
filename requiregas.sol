// SPDX-License-Identifier: BSD-2-Clause
pragma solidity ^0.8.16;

contract EmploymentContract {
    address public owner;

    /*
    Transaction 1 - transfer1 function:
    
    - Gas used: 27,344 gas
    - Transaction cost: 23,777 gas
    - Execution cost: 2,573 gas

    Transaction 2 - transfer2 function:
    
    - Gas used: 27,319 gas
    - Transaction cost: 23,755 gas
    - Execution cost: 2,551 gas
    */

    constructor() {
        owner = msg.sender;
    }

    function transfer1(uint amount) public {
        require(msg.sender == owner, "Not owner!");
        // transfer
    }

    error NotOwner(address sender);

    function transfer2(uint amount) public {
        if (msg.sender != owner)
            revert NotOwner(msg.sender);  
    }
}
