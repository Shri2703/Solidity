// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StringConcatenation{
    function concatenationString(string memory a,string memory b) public pure returns(string memory){
        bytes memory stringBytesA =bytes(a);
        bytes memory stringBytesB = bytes(b);

        bytes memory result = new bytes(stringBytesA.length + stringBytesB.length);


        for (uint256 i=0;i<stringBytesA.length;i++){
            result[i] = stringBytesA[i];
        }
           

        for (uint256 i=0;i<stringBytesB.length;i++){
            result[i] = stringBytesB[i];
        }   
        string memory concatenationString = string(result);

        return concatenationString;
    } 
}


// output :

//a=Hello
//b=World!!!

//Hello World!!!