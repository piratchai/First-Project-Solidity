// SPDX-License-Identifier: Piratchai
pragma solidity >=0.7.0 <0.9.0;


contract WillThrow {
    function aFunction() public {
        require(false, "Error Message");
    }
    
    function hasError() public {
        require(1 == 2, "Error Message");
    }
}

contract LearnTryCatch {
    
    event ErrorLogging(string reason);
    
    function tryToDo() public {
        
        WillThrow will = new WillThrow();
        
        try will.hasError() {
            
        }
        catch Error(string memory reason) {
            emit ErrorLogging(reason);
        }
    }
    
}