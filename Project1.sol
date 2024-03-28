// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.18;

contract Ak_Token {
   
  // public variables for token name and abbriviation
    string public tokenName = "akshit";
    string public tokenAbbry = "AKT";
    uint public totalSupply = 0;
    
 // mapping variable
    mapping(address => uint) public balances;
     
// mint function TO MINT NEW TOKENS
    function mint (address _address, uint _value) public {
       totalSupply += _value;
       balances[_address] += _value;
    }
    
// burn function to burn tokens
    function burn (address _address, uint _value) public {
       if (balances[_address] >= _value) {
          totalSupply -= _value;
          balances[_address] -= _value;
       }
    }
}
