/*
 ## 需求描述

 商店里进行购物结算时会使用收银机（POS）系统，这台收银机会在结算时根据客户的购物车（Cart）中的商品（Item）和商店正在进行的优惠活动（Promotion）进行结算和打印收据（Receipt）。
 已知该商店正在对部分商品进行“买二赠一”的优惠活动。
 我们需要实现一个名为```printReceipt```函数，该函数能够将指定格式的数据作为参数输入，然后在浏览器的控制台中输出收据的文本。

 输入格式（样例）：

 ```swift
 [
   'ITEM000001',
   'ITEM000001',
   'ITEM000001',
   'ITEM000001',
   'ITEM000001',
   'ITEM000003-2',
   'ITEM000005',
   'ITEM000005',
   'ITEM000005'
 ]
 ```

 其中对'ITEM000003-2'来说，"-"之前的是标准的条形码，"-"之后的是数量。
 当我们购买需要称量的物品的时候，会由称量的机器生成此类标签（Tag），收银机负责识别生成收据。

 清单内容（样例）：

 ```
 ***<没钱赚商店>收据***
 名称：可口可乐，数量：3瓶，单价：3.00(元)，小计：6.00(元)
 名称：羽毛球，数量：5个，单价：1.00(元)，小计：4.00(元)
 名称：苹果，数量：2斤，单价：5.50(元)，小计：11.00(元)
 ----------------------
 总计：21.00(元)
 节省：4.00(元)
 **********************
 ```

 ## 数据
 商品数据见 `loadAllItems()`
 促销数据见 `loadPromotions()`
 */

import UIKit

protocol Promotion {
  var barcodes: [String] { get }
}

struct Item {
  let barcode: String
  let name: String
  let unit: String
  let price: Float
}

struct BuyTwoGetOneFreePromotion: Promotion {
  var barcodes: [String]
}

func loadAllItems() -> [Item] {
  return [
    Item(
      barcode: "ITEM000000",
      name: "可口可乐",
      unit: "瓶",
      price: 3.00
    ),
    Item(
      barcode: "ITEM000001",
      name: "雪碧",
      unit: "瓶",
      price: 3.00
    ),
    Item(
      barcode: "ITEM000002",
      name: "苹果",
      unit: "斤",
      price: 5.50
    ),
    Item(
      barcode: "ITEM000003",
      name: "荔枝",
      unit: "斤",
      price: 15.00
    ),
    Item(
      barcode: "ITEM000004",
      name: "电池",
      unit: "个",
      price: 2.00
    ),
    Item(
      barcode: "ITEM000005",
      name: "方便面",
      unit: "袋",
      price: 4.50
    )
  ]
}

func loadPromotions() -> [Promotion] {
  return [
    BuyTwoGetOneFreePromotion(barcodes: ["ITEM000000", "ITEM000001", "ITEM000005"])
  ]
}

func getReceipt() -> String {
  return ""
}

let purchasedBarcodes = [
  "ITEM000001",
  "ITEM000001",
  "ITEM000001",
  "ITEM000001",
  "ITEM000001",
  "ITEM000003-2",
  "ITEM000005",
  "ITEM000005",
  "ITEM000005"
]

let expectedReceipt = """
***<没钱赚商店>收据***
名称：雪碧，数量：5瓶，单价：3.00(元)，小计：12.00(元)
名称：荔枝，数量：2斤，单价：15.00(元)，小计：30.00(元)
名称：方便面，数量：3袋，单价：4.50(元)，小计：9.00(元)
----------------------
总计：51.00(元)
节省：7.50(元)
**********************
"""
let receipt = getReceipt()
print(receipt)
print("\n结果：" + (receipt == expectedReceipt ? "正确✔️" : "错误❌"))
