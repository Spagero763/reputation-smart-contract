
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract ReputationDrop {
    address public owner;
    uint256 public totalClaimed;

    struct Claimer {
        address user;
        uint256 reputation;
    }

    mapping(address => uint256) public reputation;
    address[] public claimers;

    event ReputationClaimed(address indexed user, uint256 reputation);

    modifier onlyOwner() {
        require(msg.sender == owner, "Not authorized");
        _;
    }

    constructor() {
        owner = msg.sender;
    }

    function claimReputation(uint256 _reputation) external {
        require(reputation[msg.sender] == 0, "Already claimed");
        require(_reputation > 0, "Invalid reputation");

        reputation[msg.sender] = _reputation;
        claimers.push(msg.sender);
        totalClaimed += 1;

        emit ReputationClaimed(msg.sender, _reputation);
    }

    function getReputation(address _user) external view returns (uint256) {
        return reputation[_user];
    }

    function getAllClaimers() external view returns (Claimer[] memory) {
        Claimer[] memory all = new Claimer[](claimers.length);
        for (uint256 i = 0; i < claimers.length; i++) {
            address user = claimers[i];
            all[i] = Claimer(user, reputation[user]);
        }
        return all;
    }
}
