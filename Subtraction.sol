// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract sub{
    
int a=55;
int b=45;

function sub1() public view returns(int){
    int result =a-b;
    return result;
}

}