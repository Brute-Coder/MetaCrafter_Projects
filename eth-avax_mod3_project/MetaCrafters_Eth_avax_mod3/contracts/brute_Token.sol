// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract brute_Token{
    string public tokenName = "Brute Token";
    string public Symbol = "BRT";
    uint public BRTSupply = 0;
    uint public totalMintedBRT = 0;
    uint public totalBurnedBRT = 0;
    uint public BRT_Turnover = 0 ;
    address Tokenowner;

    mapping(address => uint) balance;

    constructor(){
        Tokenowner = msg.sender;
    }

    function BRTBalance() external view returns (uint){
        return balance[msg.sender];
    }

    function MintBRT(uint _amount) public  {
        require(msg.sender == Tokenowner,"You are not the owner , You can't mint Token");
        balance[msg.sender] += _amount;
        BRTSupply += _amount;
        totalMintedBRT += _amount;
        
    }

     function BurnBRT(uint _amount) public  {
        if(balance[msg.sender] >= _amount){
        balance[msg.sender] -= _amount;
        BRTSupply -= _amount;
        totalBurnedBRT += _amount;
        }
    }

    function SendBRT(address _address, uint _amount) public{
        require(balance[msg.sender] >= _amount,"Insufficient balance in the account , can't transfer");
        balance[_address] += _amount;
        balance[msg.sender] -= _amount;
        BRTSupply -= _amount;
        
    }

    function turnover() external returns(uint){
        BRT_Turnover = totalBurnedBRT + totalMintedBRT;
        return BRT_Turnover;
    }
}
