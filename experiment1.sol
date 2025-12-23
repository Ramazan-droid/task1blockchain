// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract MemoryVsStorage {
    string public message = "Hello";

    // Modifies memory copy (does NOT change storage)
    function modifyMemory() public view returns (string memory) {
        string memory temp = message; // copy storage to memory
        temp = "Modified";            // modifies memory only
        return temp;                  // returns "Modified"
    }

    // Modifies storage variable (changes storage)
    function modifyStorage() public {
        message = "Modified";         // directly modifies storage
    }
}
