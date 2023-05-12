// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract SimpleStorage {
    uint256 public value;
    address public owner;

    constructor(uint256 _value) {
        owner = msg.sender;
        value = _value;
    }

    modifier isOwner() {
        require(msg.sender == owner, "Only owner can use this function");
        _;
    }

    function setValue(uint256 _value) public isOwner {
        value = _value;
    }
}
