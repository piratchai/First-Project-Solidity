// SPDX-License-Identifier: Piratchai
pragma solidity >=0.7.0 <0.9.0;

contract LearnConcept{
    mapping(address => uint) private myAddressMp;
    
    function setAmount(uint _amount) public {
        address owner = msg.sender;
        myAddressMp[owner] += _amount;
    }
    
    /*function getAddressDetail() public view returns (string memory){
        address owner = msg.sender;
        uint amount = myAddressMp[owner];
        string memory detail = string(abi.encodePacked("Your address : " , owner , ", Amount" , amount));
        return detail;
    }*/
    
    function getAmount() public view returns (uint){
        address owner = msg.sender;
        return myAddressMp[owner];
    }
}