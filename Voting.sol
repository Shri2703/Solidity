// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract VotingSystem {
    struct Candidate{
        uint256 id;
        string name;
        uint256 votecount;
    }
    mapping(uint256 =>Candidate) public candidates;
    uint256 public candidatesCount;

    constructor() {
        candidatesCount =0;
    }
    function addCandidate(string memory _name) public {
        candidatesCount++;
        candidates[candidatesCount] = Candidate(candidatesCount,_name,0);
    }
    function vote(uint256 _candidateId) public{
        require(_candidateId > 0 && _candidateId <= candidatesCount,"Invalid /candidate ID");
        candidates[_candidateId].votecount++;
    }
    function getTotalVotes(uint256 _candidateId) public view returns (uint256){
        require(_candidateId > 0 && _candidateId <= candidatesCount,"Invalid Candidate id");
        return candidates[_candidateId].votecount;     
    }
}