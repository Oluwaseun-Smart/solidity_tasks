// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "hardhat/console.sol";

contract Primitives {
    //Boolean
    bool public isVerified = false;
    bool public isSent = true;

    function setVerify(bool _isVerify) public {
        isVerified = _isVerify;
        if (isVerified) {
            console.log("Verified!!!");
        }
    }

    //Addresses datatype
    address owner_address = address(0x0e27aA2c2e1DcdB900f187f6Df933Ed2d55c0ed5);
    address contract_address = address(this);

    function addr() public view returns (address) {
        if (contract_address.balance >= 10) {
            return contract_address;
        }
        return owner_address;
    }

    //ENUM datatype
    enum Status {PENDING, SUCCESS, FAILED}
    Status status;
    Status constant defaultStatus = Status.PENDING;

    //functions to interact with status enum
    function success() public pure returns (Status) {
        return Status.SUCCESS;
    }

    function setStatus(Status _status) public pure returns (Status) {
        return _status;
    }

    //Unsigned integers
    uint8 public u8 = 4;
    uint256 public u = 100;

    function sum(uint256 _a, uint256 _b) public pure returns (uint256) {
        return _a + _b;
    }

    //Signed integers
    int8 public i8 = -2;
    int256 public i256 = 250;
    int256 public i = -100;

    function sum(int256 _a, int256 _b) public pure returns (int256) {
        return _a + _b;
    }

    //bytes
    bytes1 a = 0xb5;
    bytes1 b = 0x56;

    function concatBytes(bytes2 _c, bytes2 _d) public pure returns (bytes4) {
        return (_c << 4) | _d;
    }
}
