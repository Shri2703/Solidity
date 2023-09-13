// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Lottery{
    address public players;
    address[] public players;
    address public winner;

    constructor() {
        manager = msg.sender;
    }

    function enter() public payable{
        require(msg.value > 0.01 ether,"Minimum enter fee is 0.01 ether");
        players.push(msg.sender);
    }

    function random() private view returns (uint256){
        return uint256(keccak256(abi.encodePacked(block.difficulty,block.timestamp,players)));  
    }

    function pickWinner() public restricted{
        require(players.length > 0,"No participants in the lottery");
        uint256 index = random() % players.length;
        winner = players[index];
        players = new address[](0);
        payable(winner).transfer(address(this).balance);
    }

    modifier restricted(){
        require(msg.sender == manager,"Only the Manager can perform this action ");
        _;
    }

    function getPlayers() public view returns(address[] memory){
        return players;
    }



}