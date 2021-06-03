// SPDX-License-Identifier: Piratchai
pragma solidity >=0.7.0 <0.9.0;

contract MappingStructsExample {
    
    mapping(address => uint) private addressReceived;
    
    function getBalance() public view returns(uint) {
        address msgOwner = msg.sender;
        return addressReceived[msgOwner];
    }
    
    function sendMoney() public payable {
        address msgSender = msg.sender;
        uint amount = msg.value;
        addressReceived[msgSender] = amount; 
    }
    
    function withdrawAllMoney(address payable _to) public {
        address msgSender = msg.sender;
        uint amount = addressReceived[msgSender];
        addressReceived[msgSender] = 0;
        _to.transfer(amount);
    }
}