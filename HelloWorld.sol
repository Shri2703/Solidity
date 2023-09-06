// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;  


contract HellWorld{
    string public message;

    constructor (){
        message="HelloWorld!!!";
    }

    function setMessage(string memory newmessage) public{
        message=newmessage;

    }
    
}