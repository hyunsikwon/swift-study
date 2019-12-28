import UIKit

var str = "Hello, playground"


var temp = 20

if temp > 30 {
    print("날씨가 매우 덥네요.")
} else {
    print("많이 덥진 않아요")
}


if temp < 28 {
    print("조금 더운 날씨")
} else if temp < 20 {
    print("따뜻한 날씨")
} else if temp < 10 {
    print("쌀쌀한 날씨")
} else {
    print("더운 날씨" )}


let someCharacter = "Z"

switch someCharacter {
case "a":
    print("The first letter of alphabet")
case "z","Z":
    print("The last letter of alphabet")
default :
    print("Some other character")
}


let approximateCount = 3000
let naturalCount : String

switch approximateCount {
case 0:
    naturalCount = "no"
case 1..<5:
    naturalCount = "a few"
case 5..<12:
    naturalCount = "several"
case 12..<100:
    naturalCount = "dozens of"
case 100..<1000:
    naturalCount = "hundreds of"
default:
    naturalCount = "many"
}

print(naturalCount)


let somePoint = (1,1)

switch somePoint {
case (0,0):
    print("\(somePoint) is at the origin")
case (_,0):
    print("\(somePoint) is on the x-axis")
case (0,_):
    print("\(somePoint) is on the y-axis")
case(-2...2,-2...2):
    print("\(somePoint) is in the box")
default:
    print("\(somePoint) is outside of the box")
}

let anotherPoint = (2,0)

switch anotherPoint {
case (let x , 0):
    print("on the x-axis with an x value of \(x)")
case (0, let y):
    print("on the y-axis with an y value of \(y)")
case let (x,y):
    print("somewhere else at (\(x),\(y))")
    
}


