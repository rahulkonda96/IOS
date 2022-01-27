import UIKit

var greeting = "Hello, playground"

var shoppingList = "The shopping list contains: "
var foodItems = "Cheese, Butter, Chocolate Spread"
var clothes = "Socks, T-shirts"

if clothes.hasPrefix("Socks") {
     print("The first item in clothes is socks")
}else{
    print("socks is not the first item in clothes")
}
//The first item in clothes is socks

print(foodItems.split(separator: ","))
// ["Cheese", "Butter", "Chocolate Spread"]   ** this prints in the form of list

if clothes.contains(",") {
print("Clothes contains more than one item")
}else{
    print("Clothes contain only one item")
}
//Clothes contains more than one item

foodItems[foodItems.startIndex..<foodItems.index(foodItems.endIndex,offsetBy: -7)]
//"Cheese, Butter, Chocolate"
print("\(foodItems[foodItems.startIndex..<foodItems.index(foodItems.endIndex,offsetBy: -7)])")

shoppingList +=
foodItems[foodItems.index(foodItems.startIndex, offsetBy:8)..<foodItems.endIndex]
//"The shopping list contains: Butter, Chocolate Spread"
print("\(shoppingList)")

clothes.remove(at: clothes.firstIndex(of: "T")!)
//

clothes.remove(at: clothes.firstIndex(of: "-")!)
//

print("\(shoppingList), \(clothes)")
//"The shopping list contains: Butter, Chocolate Spread, Socks, T-shirts"

clothes.insert(contentsOf: ", Trousers", at:clothes.endIndex)
//"Socks, shirts, Trousers"

var firstIndexOfR = shoppingList.index(after:shoppingList.firstIndex(of: "r")!)
print(shoppingList[..<firstIndexOfR])
//"The shopping list contains: Butters"
