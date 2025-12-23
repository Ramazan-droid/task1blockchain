// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract ConstructorInit {
    string public message;
    uint256 public count;
    address public owner;

    constructor(string memory _message, uint256 _count) {
        message = _message;   // slot 0
        count = _count;       // slot 1
        owner = msg.sender;   // slot 2
    }

    function getState() public view returns (string memory, uint256, address) {
        return (message, count, owner);
    }
}
