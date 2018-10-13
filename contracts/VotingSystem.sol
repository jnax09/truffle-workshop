pragma solidity ^0.4.17;

contract VotingSystem {
  //candidate model
    struct Candidate {
        uint id;
        string name;
        uint voteCount;
    }

  // a mapping is an efficient data structure that can map every possible
  // thing to something else - in this case, ids to candidates
  //how many candidates are in the voting system
    mapping(uint => Candidate) public candidates;

  // Store Candidates Count
    uint public candidatesCount;

    function VotingSystem () public {
        addCandidate("Elon Musk");
        addCandidate("Tim Cook");
        addCandidate("Bezos Dude");
    }

  //adding a candidate
    function addCandidate (string _name) private {
      //increment candidate count, new candidate added
        candidatesCount ++; 
      //update candidate count with the new candidate
        candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
    }
}