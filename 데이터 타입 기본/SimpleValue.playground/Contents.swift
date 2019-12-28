import UIKit

let f: Float=4 //초기값이 충분한 정보를 제공하지 못한 경우 특정한 타입을 변수명 뒤에 명시적으로 표시한다.

let label="The width is "
let width = 94
//let widthLable = label + width //Binary operator '+' cannot be applied to operands of type 'String' and 'Int'
let wdthLabel = label + String(width)
let apples = 3 //let은 상수
let oranges = 4
let appleSummary = "I have \(apples) apples."
let fruitSummary = "I have \(oranges+apples) pieces of fruit."
let name:String = "Hyunsik"
let hello = "Hello my name is \(name)." // = 반드시 양옆 띄어쓰기


var shoppingList = ["kimchi","water","condom"] //var은 변수
shoppingList[1] = "bottle of water" // 수정
shoppingList.append("bread") //추가
shoppingList.append("shampoo")

print(shoppingList)
var dictionary = [ //dictionary는 key:value
    "Malcolm":"Captatin",
    "Kaylee":"Mechanic"]
dictionary["Hyunsik"] = "CEO" //추가하기 [key] = value
print(dictionary)

let emptyArray = [String]() //

let emptyDictionary = Dictionary<String, Float>()

shoppingList=[]
print(shoppingList)


