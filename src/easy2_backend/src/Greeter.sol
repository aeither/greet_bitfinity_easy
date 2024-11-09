// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Greeter {
    string[] public submittedNames;

    function greet(string memory name) public returns (string memory) {
        submittedNames.push(name);
        return string(abi.encodePacked("Hello, ", name));
    }

    function getSubmittedNames() public view returns (string[] memory) {
        return submittedNames;
    }
    
}