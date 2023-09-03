// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract multipication{
    uint256 public result;

    function multiply(uint256 num1,uint256 num2) public {
        result =num1*num2;

    }
    
    function getResult() public view returns(uint256){
        return result;
    }


}