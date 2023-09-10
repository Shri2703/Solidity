// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;
contract addition{

int a = 50;
int b = 50;

function add()public view  returns(int){
    int result = a+b;
     return result ;

}

}

//Output

//a,b= 5,7
//result =12