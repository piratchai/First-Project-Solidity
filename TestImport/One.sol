// SPDX-License-Identifier: Piratchai
pragma solidity >=0.7.0 <0.9.0;

import "./Two.sol";

contract One {
    
    string public valueFromTwo;
    
    Two t = new Two();
    
    constructor() {
        valueFromTwo = t.getTwo();
    }
    
    
}