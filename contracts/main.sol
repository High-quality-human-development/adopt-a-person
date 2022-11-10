// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract main {
    struct Organic {
        string variety;
        string benefit;
        string img_url;
        uint amount;
    }

    struct ReferenceBodyData {
        (uint, uint) blood_pressure;
        (uint, uint) heart_rate;
        (uint, uint) blood_oxygen;
    }

    struct Combo {
        address seller;
        uint index;
        uint price;
        bool on_sale;
        Organic _organic;
        ReferenceBodyData Reference_body_data;
    }

    uint combo_index;
    mapping (uint => Combo) public combos;

    function get_combo(uint index) public view returns(Combo memory) {

    }

    function add_combo(Combo memory new_combo) public payable returns(bool) {

    }

    struct Stake {
        uint buy_tx_id;
        uint amount;
    }

    mapping (uint => Stake) public stakeOrders;

    struct BuyArgs {
        uint combo_index;
        uint amount;
    }

    struct BuyOrder {
        address buyer;
        uint buy_tx_id;
        uint time;
        BuyArgs buy_args;
    }

    uint buy_tx;
    mapping (uint => BuyOrder) public buyOrders;

    function buy(BuyArgs memory args) public payable returns BuyOrder {

    }

    struct RefundArgs {
        uint buy_tx_id;
    }

    struct RefundOrder {
        address buyer;
        address refunder;
        uint buy_tx_id;
        uint refund_tx_id;
    }

    uint refund_tx;
    mapping (uint => RefundOrder) public refundOrders;

    function refund(RefundArgs args) public payable returns RefundOrder {

    }


}