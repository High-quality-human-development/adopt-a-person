// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract main {
    struct Organic {
        string variety;
        string benefit;
        uint amount;
        string img_url;
    }
    struct Combo {
        uint index;
        Organic _organic;
        uint price;
    }

    mapping (uint => Combo) public combos;

    function get_combo(uint index) public view returns(Combo memory) {
        return combos[index];
    }

    function add_combo(uint index, Combo memory new_combo) public payable returns(bool) {
        combos[index] = new_combo;
        return true;
    }

}