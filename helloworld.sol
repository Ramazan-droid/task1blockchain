pragma solidity ^0.8.30;

contract HelloWorld {
    // Stored string variable
    string private message;
    // Event emitted when the message changes
    event MessageUpdated(string oldMessage, string newMessage);
    
    // Constructor to initialize the message
    constructor(string memory _message) {
        message = _message;
    }
    // Public getter function
    function publicgetter() public view returns (string memory) {
        return message;
    }
    // Function that updates the string 
    function updateMessage(string memory _newMessage) public {
        string memory oldMessage = message;
        message = _newMessage;
        _logUpdate(oldMessage, _newMessage);
    }
    // Private function
    function _logUpdate(string memory oldMessage, string memory newMessage) private {
        emit MessageUpdated(oldMessage, newMessage);
    }
}
