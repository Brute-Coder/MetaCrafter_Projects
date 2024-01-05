# Create a Token
This program demonstarte the creation of token using the Solidity programming language.

## Description
This program is a simple contract written in Solidity, a programming language used for developing smart contracts on the Ethereum blockchain. This contract is used for the creation of token using various functions and variables. This contract has  public varaiables that stores the details of the token namely tokenName,tokenAbbrv and totalSupply. This contract has two function namely mint function  which is used fror creation of token  and burn function which works opposite to mint as it is use to destroy the token. This program gives best demonstration about the working of token and can be used for solving  more complex problem related to tokens.

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., myToken.sol). Copy and paste the following code into the file:

```javascript
// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

/*
       REQUIREMENTS
    1. Your contract will have public variables that store the details about your coin (Token Name, Token Abbrv., Total Supply)
    2. Your contract will have a mapping of addresses to balances (address => uint)
    3. You will have a mint function that takes two parameters: an address and a value. 
       The function then increases the total supply by that number and increases the balance 
       of the “sender” address by that amount
    4. Your contract will have a burn function, which works the opposite of the mint function, as it will destroy tokens. 
       It will take an address and value just like the mint functions. It will then deduct the value from the total supply 
       and from the balance of the “sender”.
    5. Lastly, your burn function should have conditionals to make sure the balance of "sender" is greater than or equal 
       to the amount that is supposed to be burned.
*/

contract MyToken {

    // public variables here
    string public tokenName = "matic";
    string public tokenAbbrv = "mtc";
    uint public totalToken = 0 ;

    // mapping variable here

    mapping (address => uint) public wallets;

    // mint function
    function mint ( address _address, uint _val) public {
       totalToken += _val;
       wallets[_address] += _val;
    }

    // burn function
    function burn ( address _address, uint _val) public {
       if(wallets[_address] >= _val){
       totalToken -= _val;
       wallets[_address] -= _val;
       }
    }

}

```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.18" (or another compatible version), and then click on the "Compile MyToken.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "MyToken" contract from the dropdown menu, and then click on the "Deploy" button.

## Author

Soumya Sekhar Mahanti

## License

This project is licensed under the MIT License.

