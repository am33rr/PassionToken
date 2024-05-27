// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts@5.0.1/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts@5.0.1/access/Ownable.sol";


contract Passion is ERC20, Ownable {
    constructor(address initialOwner)
        ERC20("Passion", "PT")
        Ownable(initialOwner)
      
    {}

    function mint(address passion_receiver, uint256 passion_value) public onlyOwner {
        _mint(passion_receiver, passion_value);
    }

    function burn(uint256 passion_value) public returns(bool) {
        _burn(msg.sender,passion_value);
        return true;
    }   
    function transfer(address passion_receiver, uint256 passion_value) public override  returns(bool){
        _transfer(msg.sender, passion_receiver, passion_value);
        return true;
    }    
}
