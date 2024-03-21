// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.18;

contract MyCoin {
   
  // public variables
    string public tokenName = "META";
    string public tokenAbbry = "HTA";
    uint public totalSupply = 0;
    
 // mapping variable
    mapping(address => uint) public balances;
     
// mint function
    function mint (address _address, uint _value) public {
       totalSupply += _value;
       balances[_address] += _value;
    }
    
// burn function
    function burn (address _address, uint _value) public {
       if (balances[_address] >= _value) {
          totalSupply -= _value;
          balances[_address] -= _value;
       }
    }
}
