# adopt-a-person

## 功能：

- 产品展示
    ```
    // 有机蔬果结构体
    struct Organic {
        index: Nat; // 第几种套餐
        varieties: [Text]; // 品种
        functions: [Text]; // 对应的功效
        amount: Nat; // 每个品种对应多少kg
        img_url: [Text]; // 图片存储的url
        var price: Nat; // 价格
    }
    ```

    合约： 查询所有的有机蔬果; 添加/删除相关套餐
    
    前端： 展示

    后端：合约调用；存图片


-  购买套餐：
    ```
    struct BuyArgs {
        organic_index: Nat; // 第几种套餐
        amount: Nat; // 购买几份
        time: Int;
    }
    // 返回给后端
    struct BuyOrder {
        buyer: Address;
        buy_arg: BuyArgs;
        time: Int;
    }
    ```
    前端：相应页面；
    
    后端： 调合约代币的转账；提供BuyArgs调合约的买函数会返回BuyOrder；

- 人无改善退款：
    ```
    struct Refund {
        buy_order: BuyOrder;
        user_body_data: BodyData;
        reference_body_data: BodyData;
    }
    struct BodyData {
        heart_rate: Nat;
        blood_sugar_concentration: Nat;
        blood_oxygen_saturation: Nat;
    }
    
    ```
    合约：退款函数
    
    前端：相应页面

    后端：提供Refund参数调退款函数

- ERC20代币
       
