import UIKit

var str = "Hello, playground"

let names = ["hyunsik","jieun","baekho","wooyoung"]

for name in names{
    print("Name : \(name)")
}

let numberOfLegs = ["spider" : 8, "ant" : 6, "cat" : 4]

for (name,leg) in numberOfLegs{
    print("\(name) : \(leg)")
}

for a in 1...5 {
    print("\(a) 곱하기 5 는 \(a*5)")
}
