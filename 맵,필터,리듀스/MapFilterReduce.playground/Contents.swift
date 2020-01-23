import UIKit

var str = "Hello, playground"


let arr = [2, 15, 100, 79 , 20]

let filteredArr = arr.filter (){$0 >= 20}

print(filteredArr)

let digitNames = [
    0: "Zero", 1: "One", 2: "Two", 3: "Three", 4: "Four",
    5: "Five", 6: "Siz", 7: "Seven", 8: "Eight", 9: "Nine"
]

let numbers = [16, 58, 510]

let nubmersToString = numbers.map { (number) -> String in
    var str = ""
    var number = number
    
    while number > 0 {
        str = digitNames[number % 10]! + str
        number /= 10
    }
    
    return str
    
}

print(nubmersToString)
