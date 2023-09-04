// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Division{
    uint256 public result;


    function div(uint256 num1, uint256 num2)public{
        require(
            num2!=0,"Division  by zero is not allowed "
        );
        result= num1 / num2;
    }

    function getResult() public view returns(uint256){
        return result;
    }
}