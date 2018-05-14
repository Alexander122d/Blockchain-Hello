pragma solidity ^0.4.18;

contract Blockchain_hello {

    mapping (address => bytes32) names;
    mapping (address => bytes32) shortMessages;

    event MessageSended(address indexed sender, bytes32 name, bytes32 shortMessage);

    function sendMessage(bytes32 _name, bytes32 _message) public returns(bool) {

        names[msg.sender] = _name;
        shortMessages[msg.sender] = _message;
        MessageSended(msg.sender, _name, _message);

        return true;

    }

}
