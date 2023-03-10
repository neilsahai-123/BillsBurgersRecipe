import UIKit

var greeting = "Hello, playground"

enum OrderType {
    case pickup
    case delivery
}

enum ItemType {
    case SeasonedFries
    case MajorWay
    case YumYumJuice
    case PTownerBurger
    case Cheeseburger
    case GourmetChocolateChipCookie
    
    var itemPrice: Double {
        switch self {
        case .SeasonedFries:
            return 5.0
        case .MajorWay:
            return 3.5
        case .YumYumJuice:
            return 6.5
        case .PTownerBurger:
            return 8.5
        case .Cheeseburger:
            return 10.0
        case .GourmetChocolateChipCookie:
            return 20.0
        }
    }
}

struct ItemDetail {
    let name: String
    let itemType: ItemType
    let quantity: Int
    let price: Double
}

struct OrderDetails {
    var orderId: String
    var customerName: String
    var customerContactNo: String
    var totalPrice: Double
    var address: String? //Optional variable
    var orderType: OrderType?
    var itemList: [ItemDetail]
}


func getTotalPriceOfOrder(items: [ItemDetail]) -> Double {
    var orderTotal = 0.0
    
    for item in items {
        let itemTotal = Double(item.quantity) * item.price
        orderTotal += itemTotal
    }
    return orderTotal
}

let itemType1: ItemType = .SeasonedFries
let item1 = ItemDetail(name: "Seasoned Fries",
                       itemType: itemType1,
                       quantity: 2,
                       price: itemType1.itemPrice)

let itemType2: ItemType = .Cheeseburger
let item2 = ItemDetail(name: "Chees Burger",
                       itemType: itemType2,
                       quantity: 3,
                       price: itemType2.itemPrice)

let itemType3: ItemType = .GourmetChocolateChipCookie
let item3 = ItemDetail(name: "Gourmet Chocolate Chip Cookie (2 Pieces)",
                       itemType: itemType3,
                       quantity: 1,
                       price: itemType3.itemPrice)

let itemType4: ItemType = .MajorWay
let item4 = ItemDetail(name: "Major Way",
                       itemType: itemType4,
                       quantity: 2,
                       price: itemType4.itemPrice)

let itemType5: ItemType = .PTownerBurger
let item5 = ItemDetail(name: "P-Towner Burger",
                       itemType: itemType5,
                       quantity: 3,
                       price: itemType5.itemPrice)

let itemType6: ItemType = .YumYumJuice
let item6 = ItemDetail(name: "Yum Yum Juice",
                       itemType: itemType6,
                       quantity: 5,
                       price: itemType6.itemPrice)

let orderItemList = [item1, item2, item3, item4, item5, item6]

let item1Total = getTotalPriceOfOrder(items: [item1])
print("Total amount for \(item1.name) is $\(item1Total) ")

let item2Total = getTotalPriceOfOrder(items: [item2])
print("Total amount for \(item2.name) is $\(item2Total) ")

let item3Total = getTotalPriceOfOrder(items: [item3])
print("Total amount for \(item3.name) is $\(item3Total) ")


let item4Total = getTotalPriceOfOrder(items: [item4])
print("Total amount for \(item4.name) is $\(item4Total) ")

let item5Total = getTotalPriceOfOrder(items: [item5])
print("Total amount for \(item5.name) is $\(item5Total) ")

let item6Total = getTotalPriceOfOrder(items: [item6])
print("Total amount for \(item6.name) is $\(item6Total) ")

let orderTotal = item1Total + item2Total + item3Total + item4Total + item5Total + item6Total



let order = OrderDetails(orderId: "1",
                          customerName: "Megan",
                          customerContactNo: "123456",
                          totalPrice: orderTotal,
                          itemList: orderItemList)

print(order.totalPrice)
