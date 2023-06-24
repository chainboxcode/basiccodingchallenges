// SPDX-License-Identifier: BSD-2-Clause
pragma solidity ^0.8.16;

// which function has the highest gas cost?
// emit1 - highest - it accesses the contract variable in storage
// emit2 - medium - accesses a local variable in the function which is cheaper but also does the variable assignment which uses some gas
// emit3 - lowest - it uses a hardcoded value so has no access to the storage for the contract or the local variable
/* test results -
gas [emit1, emit2, emit3] = [201470 gas, 186219 gas, 83000 gas]
transaction cost [emit1, emit2, emit3] = [175191 gas, 161929 gas, 159130 gas]
execution cost [emit1, emit2, emit3] = [154127 gas, 140865 gas, 138066 gas]
*/

contract EmitNumbers {
    uint8 count = 100;

    event Number(uint8);

    function emitNumber1() external {
        for (uint8 i; i < count; i++) {
            emit Number(i);
        }
    }

    function emitNumber2() external {
        uint8 _count = count;
        for (uint8 i; i < _count; i++) {
            emit Number(i);
        }
    }

    function emitNumber3() external {
        for (uint8 i; i < 100; i++) {
            emit Number(i);
        }
    }
}
