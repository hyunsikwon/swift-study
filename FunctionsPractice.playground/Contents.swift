import UIKit

var str = "Hello, playground"


func greet(person :String) -> String {
    let greeting = "Hello, " + person + "!"
    return greeting
}

print(greet(person: "Jieun"))

func sayHello () -> String {
    return "Hello~"
}

print(sayHello())

func greeting (person : String , yOrn : Bool) -> String {
    if yOrn{
        return greet(person: person)
    } else{
        return sayHello()
    }
}

print(greeting(person : "Jinja" , yOrn: false))

func minMax (array : [Int]) -> (max : Int, min : Int) {
    var currentMax = array[0]
    
    var currentMin = array[0]
    
    for value in array[1..<array.count]{
        if value > currentMax{
            currentMax = value
        }
        else if value < currentMin{
            currentMin = value
        }
    }
    return (currentMax , currentMin)
}

let bounds = minMax(array: [8,-6,2,109,3,71])

print("Max : \(bounds.max) Min : \(bounds.min)")


func printAndCount (string : String) -> Int {
    print(string)
    return string.count
}

// _ 없으면 오류,,
// 첫번째 함수를 호출하지만 리턴값은 무시한다.
func printWithoutCount (string : String){
    let _ = printAndCount(string: string)
}

printAndCount(string: "Hello, world")

printWithoutCount(string: "Hello, world")

func greetAgain(person : String ) -> String {
    return "Hello again, " + person + "!"
    
}

func greet(_ person : String, yon : Bool) -> String {
    if yon {
        return greetAgain(person: person)
    } else{
        return greet(person: person)
    }
}

print(greet("Hyunsik", yon: false))


func average(_ value : Double...) -> Double {
    var total: Double = 0
    for numbers in value {
        total += numbers
    }
    return total / Double(value.count)
}

print(average(3,4,5,1,2))

func addTwoInts(_ a : Int, _ b : Int) -> Int {
    return a + b
    
}

var mathFunction : (Int, Int) -> Int = addTwoInts

print(mathFunction(2,5))


func mathFunctionResult(_ mathFunction : (Int, Int) -> Int, _ a: Int, _ b: Int ){
    print("\(mathFunction(a,b))")
    
}

print(addTwoInts, 5, 9)

//func stepFoward(_ input: Int) -> Int {
//    return input + 1
//}
//
//func stepBackward(_ input: Int) -> Int {
//    return input - 1
//}

func chooseFunction(_ backward: Bool) -> (Int) -> Int {
    func stepFoward(_ input: Int) -> Int {
        return input + 1
    }
    
    func stepBackward(_ input: Int) -> Int {
        return input - 1
    }
    return backward ? stepBackward : stepFoward
}

var inputValue = 4

let moveNearToZero = chooseFunction(inputValue > 0)

while inputValue != 0 {
    print("\(inputValue)...")
    inputValue = moveNearToZero(inputValue)
}
print("zero!")
