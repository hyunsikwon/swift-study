//: [Previous](@previous)

import Foundation

//Challenge Time! 😃
//
//Create a struct named Temperature with properties for degrees in both Celsius and Fahrenheit, as Doubles.
//
//Hint 1: One property must be stored, but the other can be computed. They should always stay in sync.
//Hint 2: To convert from Fahrenheit to Celsius, subtract 32, then divide by 1.8.

struct Temperature {
    var celsius : Double {
        get {
            return (fahrenheit - 32) / 1.8
        }
        set {
            fahrenheit = newValue * 1.8 + 32
        }
        
    }
    var fahrenheit : Double {
        didSet {
            if fahrenheit > 100 {
                print("Wraning!")
            }
        }
    }
}

var temperature = Temperature(fahrenheit: 100)
temperature.celsius = 50
temperature.fahrenheit
temperature.celsius

//
//
//Modify the Fahrenheit property to print out a warning message if it is set to above 100 degrees.
//: [Next](@next)


struct Wizard {
    var firstName : String
    var lastName : String
    
    var fullName : String {
        get { return firstName + " " + lastName }
        set {
            let nameSubstrings = newValue.split(separator: " ")
            
            guard nameSubstrings.count >= 2 else {
                print("\(newValue) is not full name.")
                return
            }
            let nameStrings = nameSubstrings.map(String.init)
            // guard문을 지나쳤기 때문에 firstName 과 lastName이 존재한다는 것을 알고있다.
            // 따라서 강재 언랩핑 해도 상관 없음
            firstName = nameStrings.first!
            lastName = nameStrings.last!
            
        }
    }
    
}

var wizard = Wizard(firstName: "Harry", lastName: "Porter")
wizard.fullName = "Won Hyunsik"

wizard.firstName
wizard.lastName

