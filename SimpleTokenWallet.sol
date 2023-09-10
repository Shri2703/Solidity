// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract SimpleTokenWallet{
    mapping (address=>uint256) balances;

    function getBalance() public view returns(uint256){
        return balances[msg.sender];
    }

    function deposit(uint256 amount) public{
        require(amount >0,"Deposit must be greater than 0");
        balances[msg.sender] += amount;
    }

    function withdraw (uint256 amount) public{
        require(amount > 0 ,"Withdraw must be greater than 0");
        require(balances[msg.sender] >= amount,"Insufficient balance");
        balances[msg.sender] -= amount;
    }
}


//Output

// balance =0

//Deposit=50
//balance =50

//withdraw=10
//balance= 40