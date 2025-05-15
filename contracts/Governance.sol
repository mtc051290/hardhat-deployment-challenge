// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Governance {
    struct Proposal {
        string title;
        string description;
        address creator;
        uint256 timestamp;
    }

    Proposal[] public proposals;

    event ProposalCreated(uint256 id, string title, address creator, uint256 timestamp);

    function createProposal(string calldata title, string calldata description) external {
        proposals.push(Proposal(title, description, msg.sender, block.timestamp));
        uint256 id = proposals.length - 1;
        emit ProposalCreated(id, title, msg.sender, block.timestamp);
    }

    function getProposals() external view returns (Proposal[] memory) {
        return proposals;
    }
}
