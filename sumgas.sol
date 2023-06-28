pragma solidity ^0.8.0;
/*
add1	2417	Iterates over the array by first loading the value of the loop variable from memory.
add2	2385	Iterates over the array by first accessing the element at the current index and then incrementing the loop variable.

The difference in gas cost is due to the fact that the add1 function has to do an extra SLOAD operation to load the value of the 
loop variable i from memory. The add2 function, on the other hand, 
does not have to do an extra SLOAD operation because the value of the loop variable i is already stored in the stack.

*/

contract Sum {
    function add1(uint[] memory data) public pure returns (uint) {
        uint sum = 0;
        for (uint i = 0; i < data.length; i++) {
            sum += data[i];
        }
        return sum;
    }
    
    function add2(uint[] memory data) public pure returns (uint) {
        uint sum = 0;
        for (uint i = 0; i < data.length; ++i) {
            sum += data[i];
        }
        return sum;
    }
}
