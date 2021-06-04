// SPDX-License-Identifier: Piratchai
pragma solidity >=0.7.0 <0.9.0;

contract TestQuery {
    
    uint private amount;
    
    function setAmount(uint _amount) public {
        amount = _amount;
    }
    
    function getAmountConvertToWei() public view returns(uint) {
        uint r = amount * 1 ether;
        return r;
    }
}