// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Structs {
    struct User {
        string name;
        uint256 age;
    }

    mapping(address => User) public users;

    function setUserDetails(string calldata _name, uint256 _age) public {
        address _address = msg.sender;
        users[_address] = User({name: _name, age: _age});
    }

    function getUserDetail()
        public
        view
        returns (string memory _name, uint256 _age)
    {
        User memory user = users[msg.sender];
        return (user.name, user.age);
    }
}
