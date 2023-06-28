pragma solidity ^0.8.7;

contract Owner {
    address public owner;
    uint private code;

    /* 
       This code illustrates the changeOwnerInsecure function and the absence of onlyOwner which would
       anyone to change owner status. This was a problem in early solidity programs
       which was exploited to mint ERC20 tokens by anyone calling the contract.
    */

    constructor(address _owner, uint _code) {
        owner = _owner;
        code = _code;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can call this function.");
        _;
    }

    function getOwner() public view returns (address) {
        return owner;
    }

    function changeOwner(address _newOwner, uint _newCode) public onlyOwner {
        require(_newCode == code, "Please enter the correct code!");

        owner = _newOwner;
    }

    function changeOwnerInsecure(address _newOwner, uint _newCode) public  {
        require(_newCode == code, "Please enter the correct code!");

        owner = _newOwner;
    }
}
