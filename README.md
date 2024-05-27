# Passion Token(ERC20)
This module contains the creation of our ERC20 token and implementing its functionalities . In this project I have created a token called Passion . The name has been derived from my favourite song - 'Passionfruit' by Drake

## Features
Our Passion Token(PT) can perform the following functionalities which has been demonstrated in the video-
* Mint - only the owner can perform the mint operation to mint Passion Tokens(PT) to the respective address.
* Burn - deducts the specified number of Passion Tojens(PT) from the account which is calling the function.
* Transfer - sends specified amount of Passion Tokens(PT) from sender to receiver address.

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., Passion.sol). Copy and paste the following code into the file:

```solidity

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

```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.20" (or another compatible version), and then click on the "Compile Passion.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "Passion" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it .
## Authors

Ameer S

email-am33rrss@gmail.com

## License

This project is licensed under the [MIT] License - see the LICENSE.md file for details
