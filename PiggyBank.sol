// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PiggyBank{
    address public Owner;
    uint256 public Balance;

    constructor() {
        Owner = msg.sender;
    }
    function deposits() public payable{
        require(msg.value > 0,"Please send some ether to deposit");
        Balance += msg.value;
    }

    function CheckBalance() public view returns(uint256){
        return Balance;
    }
}