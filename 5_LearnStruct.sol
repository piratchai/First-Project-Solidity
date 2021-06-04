// SPDX-License-Identifier: Piratchai
pragma solidity >=0.7.0 <0.9.0;

contract LearnConcept{
    
    // -- struct -- //
    struct Employee {
        string name;
        uint salary;
        address empAddress;
    }
    
    mapping(address => Employee) private employeeMp;
    
    function newEmployee(string memory empName, uint empSalary) public {
        address sender = msg.sender;
       employeeMp[sender].name = empName;
       employeeMp[sender].salary = empSalary;
       employeeMp[sender].empAddress = sender;
    }
    
    function getEmployeeName() public view returns(string memory) {
        Employee memory emp = employeeMp[msg.sender];
        string memory empStr = string(abi.encodePacked("Employee Name : ", emp.name));
        return empStr;
    }
}