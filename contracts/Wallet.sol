// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Wallet {
    mapping(address => uint256) public wallets;

    function deposit(uint256 amount) public payable {
        address _address = msg.sender;
        uint256 balance = wallets[_address];
        if (balance > 0) {
            balance = balance + amount;
            wallets[_address] = balance;
        } else {
            wallets[_address] = amount;
        }
    }

    function checkBalance() public view returns (uint256) {
        return wallets[msg.sender];
    }
}
