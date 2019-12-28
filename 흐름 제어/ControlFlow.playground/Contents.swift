import UIKit

let indivisualScores = [75, 43, 103, 87, 12]

var teamScore = 0
for score in indivisualScores{
    if score>50{
        teamScore += 3
    } else{
        teamScore += 1
    }
}
print(teamScore)

var optionalString: String? = "Hello" //swift에서는 변수선언시에 nil값이 들어갈 수 없다. ?는 nil을 표현하기 위한 수단
print(optionalString == nil) //print(optionalString) ==> optional("Hello") Optional 타입은 기본적으로 wrap되어 있는 상태입니다. 즉, Optional로 선언된 변수들은 값이 있는 것인지, nil인 것인지 wrap되어 있어서 모르는 상태입니다.

var optionalName: String? = nil  //?가 빠지면 오류가 난다
var greeting = "Hello!"      //if문 안의 조건문은 꼭 boolean으로 표현되어야 한다.
if let name = optionalName { // option값이 nil이면 false
    greeting = "Hello! \(name)"
} else {
    greeting = "Hi!"
}

let vegetable = "red pepper"

 switch vegetable {
case "celery":
    print("Add some raisins and make ants on a log.")
case "cucumber", "watercress":
    print("That would make a good tea sandwich.")
case let x where x.hasSuffix("pepper"): // 문자열의 마지막이 주어진 문자열과 같은지 여부를 Boolean으로 반환
    print("Is it a spicy \(x)?")
 default:
    print("Everythig tastes good in soup")
    
}

let interestNumbers = [
    "Prime" : [2, 3, 5, 7, 11, 13],
    "Fibonacci" : [1, 1, 2, 3, 5, 8],
    "Square" : [1, 4, 9, 16, 25]]

var largest = 0

for (kind, numbers) in interestNumbers{
    for number in numbers{
        if number > largest{
            largest = number
        }
    }
}

print(largest)

var n = 2

while n<100 {
    n = n*2
    
}
print(n)


var m = 2

repeat {
    m *= 2
} while m < 100

print(m)


var total = 0

for i in 0..<4{
    total += i
}
print(total)



