# Final Test: POS-iOS

The final test of the Basic Training is finishing the POS app, you will need to follow the following requirement.

1. Need to finish following pages
    1. Item list
    1. Cart page
    1. Receipts page
1. UI design and user interaction is on yourself.
1. The data is from a server, using your networking knowledge to get the data from the server.
1. Using UITableView to display all the list page.
1. Adding unit tests.

## Detail Requirements

The shop is using the POS system to check the items, this POS will check and print the receipt according to the items in the cart and the promotions.

Recently, the shop has `Buy Two Get One Free` promotion for some of the items.

We need to implement a app with a list of the items which display all the items, people can put items into the cart, and also the app can show what is inside the cart, and after users pay the bill, we should show the receipt. Then the cart should be emptied.

You the decide the data sturcture, UI design, the way to interact by yourself.

```swift
[
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
```

For example, "ITEM000003-2", the string before `-` is the barcode, the number after `-` is the count of the items.


EG. Receipts：

```
***Receipts***
Name：Coca Cola，Count：3(bottle)，Price：￥3.00，Subtotal：￥6.00
Name：Badminton，Count：5，Price：￥1.00，Subtotal：￥4.00
Name：Apple，Count：1(kg)，Price：￥11.00，Subtotal：￥11.00
----------------------
Total：￥21.00
Saved：￥4.00
**********************
```
