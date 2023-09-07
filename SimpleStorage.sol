// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract SimpleStorage{
    uint256 private storageData;

    function set(uint256 X) public{
        storageData=X;
    }
    function get() public view returns(uint256){
        return storageData;
    }
}