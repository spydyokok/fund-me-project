// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract Voting {

    struct list {
        uint256 id;
        string name;
         uint256 votes;
    }


 list[] public candidates;


 function addcandidate (uint256 id , string memory name) public {
    candidates.push(list(id,name,0));
    
 }

function vote (uint256 _index) public{
  candidates[_index].votes += 1 ;
}

 function candidatecounter () public view returns (uint256){
   return candidates.length;
 }

}