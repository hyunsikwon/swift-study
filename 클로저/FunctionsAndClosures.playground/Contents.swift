import UIKit

var str = "Hello, playground"

func greet(person: String, day: String) ->
    String{
        return "Hello, \(person), today is \(day)"
}
greet(person: "Hyunsik", day: "Sunday")

//기초 공부하고 다시온다...

//Closures
func backward(_ s1: String, _ s2: String) -> Bool {
    return s1 > s2
}


var names = ["Hyunsik", "Jieun", "Jihwan","Yongtaek","Chunwoong","Jungil","Kangnam"]

var sortedNames = names.sorted(by:backward)

print(sortedNames)

//{ (parameters) -> return type in
//    statements
//}

var reversedNames = names.sorted(by: {(s1: String, s2:String) -> Bool in return s1 > s2})

reversedNames = names.sorted(by: { s1 ,s2 in return s1 > s2 })
reversedNames = names.sorted(by: { s1,s2 in s1 > s2 })
reversedNames = names.sorted(by: { $0 > $1 })
reversedNames = names.sorted(by : >)
reversedNames = names.sorted(){ $0 > $1 }
reversedNames = names.sorted{ $0 > $1 }

print(reversedNames)

let digtNames = [0 : "Zero", 1 : "One", 2 : "Two", 3: "Three", 4: "Four",
                 5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"]

let numbers = [16, 58, 510]

var strings = numbers.map { (number) -> String in
    var number = number
    var output = ""
    
    repeat{
        output = digtNames[number % 10]! + output
        number = number/10
        
    } while number > 0
    
    return output
}

print(strings)

func makeIncrementer (forIncrement amount : Int) -> () -> Int {
    var total = 0
    
    func incrementer () -> Int {
        total  += amount
        
        return total
    }
    
    return incrementer
    
}

let incrementByTen = makeIncrementer(forIncrement: 10)

incrementByTen()

incrementByTen()

//함수가 각기 실행 되지만 실제로는 변수 runningTotal과 amount가 캡쳐링 되서 그 변수를 공유하기 때문에 계산이 누적된 결과를 갖습니다.

let incrementBySeven = makeIncrementer(forIncrement: 7)

incrementBySeven()

incrementByTen()

//다른 클로저이기 때문에 연산에 전혀 영향이 없습니다. 그냥 다른 저장소의 변수를 사용해 계산합니다.


var a: String = "Hyunsik"


