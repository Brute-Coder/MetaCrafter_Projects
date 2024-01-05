
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "hardhat/console.sol";

contract DegenToken is ERC20, Ownable, ERC20Burnable {

    constructor() ERC20("Degen", "DGN") {}

        function mint(address to, uint256 amount) public onlyOwner{
            _mint(to, amount);
        }

        function decimals() override public pure returns (uint8){
            return 0;
        }
        function transferDegen(address _reciever, uint amount) external{
            require(balanceOf(msg.sender) >= amount, "you are not owner");
            approve(msg.sender, amount);
            transferFrom(msg.sender, _reciever, amount);
        }
        
        function burnDegen(uint amount) external{
            require(balanceOf(msg.sender)>= amount, "You can't burn more than the degen you own");
            _burn(msg.sender, amount);
        }

        function YourBalance() external view returns(uint){
           return balanceOf(msg.sender);
        }
        function gameStore() public pure returns(string memory) {
            return "1. wheel spin [ 0 -> 1000 ] = 200 \n 2. get 2x token = 100  ";
        }
        function reedemTokens(uint _userChoice) external payable{
            require(_userChoice >0 && _userChoice<=2,"Invalid selection");
            if(_userChoice ==1){
                uint amount =  uint(keccak256(abi.encodePacked(block.timestamp,msg.sender))) % 500;
                require(balanceOf(msg.sender)>=200, "There is not sufficient Balance to for this redemption");
                approve(msg.sender, amount);
                transferFrom(msg.sender, owner(), amount);
            }
            else if(_userChoice ==2){
                require(balanceOf(msg.sender)>=100, "There is not sufficient Balance to for this redemption");
                approve(msg.sender, 200);
                transferFrom(msg.sender, owner(), 200);
            }
            

        }

}

