// SPDX-License-Identifier: Piratchai
pragma solidity >=0.7.0 <0.9.0;

contract Test {
    // -- local variable -- //
    uint private balanceReceived; // wei uint //
    
    // -- events -- //
    event WithdrawAllMoney(address msgSender, address msgTo, uint amountEther, string detail);

    // -- private functions -- //
    function getBalanceWei() private view returns(uint) {
        uint r = address(this).balance;
        return r;
    }

    // -- public functions -- //
    function receiveMoney() public payable {
        balanceReceived += msg.value;
    }

    function getbalanceReceiveMoney() public view returns(uint) {
        uint r = balanceReceived / 1 ether;
        return r;
    }

    function getBalance() public view returns(uint) {
        uint r = address(this).balance / 1 ether;
        return r; // Return balance ether uint //
    }

    function withdrawAllMoney() public {
        address payable to = payable(msg.sender);
        
        uint amount = getBalanceWei();
        
        to.transfer(amount);
        
        emit WithdrawAllMoney(msg.sender, to, amount / 1 ether, "Withdraw All Money At Smart Contract To Owner");
    }
    
    function withdrawMoneyWithBalance(uint amount) public {
        address payable to = payable(msg.sender);
        
        uint _etherWei = amount * 1 ether;
        
        to.transfer(_etherWei);
    }

    function withdrawAllMoneyTo(address payable _to) public {
        _to.transfer(getBalanceWei());
    }
    
    function withdrawMoneyWithBalanceTo(address payable _to, uint amount) public {
        uint _etherWei = amount * 1 ether; // convert ether uint to ether wei uint //
        
        assert(_etherWei <= getBalanceWei());
        
        _to.transfer(_etherWei);
    }
}