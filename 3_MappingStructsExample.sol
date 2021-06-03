// SPDX-License-Identifier: Piratchai
pragma solidity >=0.7.0 <0.9.0;

contract MappingStructsExample {
    function getBalance() public view returns(uint) {
        return address(this).balance;
    }
    
    function sendMoney() public payable {
        
    }
    
    function withdrawAllMoney(address payable _to) public {
        _to.transfer(address(this).balance);
    }
}