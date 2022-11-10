# adopt-a-person

- 领养一个人

## 合约功能接口


有机蔬果结构体
```
struct Organic {
    string variety;
    string benefit;
    string img_url;
    uint amount;
}
```
购买套餐后人体数据的参考值
```
struct ReferenceBodyData {
    (uint, uint) blood_pressure;
    (uint, uint) heart_rate;
    (uint, uint) blood_oxygen;
}
```
健康套餐
```
struct Combo {
    address seller;
    uint index;
    uint price;
    bool on_sale;
    Organic _organic;
    ReferenceBodyData Reference_body_data;
}
```

得到某一个健康套餐
```
function get_combo(uint index) public view returns(Combo memory) {

}
```

添加一个健康套餐
```
function add_combo(Combo memory new_combo) public payable returns(bool) {

}
```
商品订单抵押钱款
```
struct Stake {
    uint buy_tx_id;
    uint amount;
}
```
购买订单参数
```
struct BuyArgs {
    uint combo_index;
    uint amount;
}
```
购买成功订单
```
struct BuyOrder {
    address buyer;
    uint buy_tx_id;
    uint time;
    BuyArgs buy_args;
}
```
购买套餐
```
function buy(BuyArgs memory args) public payable returns BuyOrder {

}
```
退款处理参数
```
struct RefundArgs {
    uint buy_tx_id;
}
```
退款成功订单
```
struct RefundOrder {
    address buyer;
    address refunder;
    uint buy_tx_id;
    uint refund_tx_id;
}
```
退款函数
```
function refund(RefundArgs args) public payable returns RefundOrder {

}
```