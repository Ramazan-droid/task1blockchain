// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract MemoryVsStorage {
    string public message = "not modified";

    // Modifies memory copy (dont change storage)
    function modifyMemory() public view returns (string memory) {
        string memory temp = message; 
        temp = "Modified";            
        return temp;                  
    }

    // Modifies storage variable (changes storage)
    function modifyStorage() public {
        message = "Modified";        
    }
}
