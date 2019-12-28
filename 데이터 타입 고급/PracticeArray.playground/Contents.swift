import UIKit

var str = "Hello, playground"

// 배열 연습

var someInts = [Int]()

someInts.append(10)
someInts.append(1000)

var someStrings = ["jieun","hyunsik"]

print(someStrings)

print("someInts is of type [Int] with \(someInts.count) items.")

var threeDoubles = Array(repeating: 0.0, count: 7)

var shoppingList : [String] = ["Eggs", "Chocolate"]

print(shoppingList.count)

shoppingList += ["condom", "laptop"]

print(shoppingList.count)

shoppingList[0] = "six Eggs"

shoppingList
if shoppingList.isEmpty {
    print("empty")
} else {
    print("not Empty")
}

// 배열의 1~3번째 항목을 strawberry로 대체한다
shoppingList[1...3] = ["strawberry"]
shoppingList

shoppingList.insert("condom", at: 1)


let condomContain = shoppingList.remove(at: 1)
condomContain
shoppingList

let strawberryContain = shoppingList.removeLast()
strawberryContain

shoppingList += ["condom", "panties","chocolate","macbook"]

for item in shoppingList{
    print(item)
}

for (index, item) in shoppingList.enumerated() {
    print("Itme\(index) : \(item)")
}
