// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract test {

    function check(string memory name) public pure returns (bool) {
        bytes memory _byte = bytes(name);
        uint _length = _byte.length;
        uint _reference = 5;
        if(_length > _reference) return true;
        return false;
    }
}