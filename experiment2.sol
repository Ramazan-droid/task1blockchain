// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract FunctionVisibility {
    //can be called by:internal,external and other contracts
    function publicFunction() public view returns (string memory) {
        return "Public function called";
    }

    //can be called:only inside this contract or derived contract
    function internalFunction() internal view returns (string memory) {
        return "Internal function called";
    }

    //can be called:only inside this contract
    function privateFunction() private view returns (string memory) {
        return "Private function called";
    }

    // External function: can be called only from outside the contract
    //can be called only from outside contract
    function externalFunction() external view returns (string memory) {
        return "External function called";
    }

    function testCalls() public view returns (string memory) {
        string memory result;

        // Can call public and internal functions internally
        result = publicFunction();        
        result = internalFunction();      
        result = privateFunction();       

        // Cannot call externalFunction() internally using direct call
        //result = externalFunction(); 

        return result;
    }
}
