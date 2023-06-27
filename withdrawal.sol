// SPDX-License-Identifier: BSD-2-Clause
pragma solidity ^0.8.16;

contract WithdrawContract {
    mapping(address => uint) public balance;
    mapping(address => bool) public isAllowed;

    function insecureWithdraw(uint amount) external {
        require(amount > 0, "Can't withdraw zero");
        require(balance[msg.sender] >= amount, "Not enough funds");

        balance[msg.sender] -= amount;
        (bool success, ) = payable(msg.sender).call{value: amount}("");
        require(success, "Low level call failed");
    }

    function secureWithdraw(uint amount) external {
        require(amount > 0, "Can't withdraw zero");
        require(balance[msg.sender] >= amount, "Not enough funds");

        balance[msg.sender] -= amount;
        require(payable(msg.sender).send(amount), "Withdrawal failed");
    }

    function deposit() external payable {
        balance[msg.sender] += msg.value;
    }

    function grantAccess(address user) external {
        isAllowed[user] = true;
    }

    function revokeAccess(address user) external {
        isAllowed[user] = false;
    }
}
