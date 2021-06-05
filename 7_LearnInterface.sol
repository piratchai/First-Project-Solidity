// SPDX-License-Identifier: Piratchai
pragma solidity >=0.7.0 <0.9.0;


interface IMoney {
    function receiveMoney() external payable;
    
    function withdrawAllMoney() external;
    
    function getBalanceWei() external view returns(uint);
    
    function getBalanceEth() external view returns(uint);
}

contract LearnInterface is IMoney {
    
    function receiveMoney() public override payable {}
    
    function withdrawAllMoney() public override {
        address payable to = payable(msg.sender);
        
        uint amount = address(this).balance;
        
        to.transfer(amount);
    }
    
    function getBalanceWei() public override view returns(uint){
        uint balance = address(this).balance;
        
        return balance;
    }
    
    function getBalanceEth() public override view returns(uint){
        uint balance = address(this).balance;
        
        uint cEther = balance / 1 ether;
        
        return cEther;
    }
    
}