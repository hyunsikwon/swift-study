import UIKit

var str = "Hello, playground"

let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)
print(convertedNumber)

var serverResponseCode: Int? = 404
print(serverResponseCode)

var surveyAnswer: String?
print(surveyAnswer)

if convertedNumber != nil{
    print("convertedNumber has an integer value of \(convertedNumber!).")
    //!가 없으면 convertedNumber has an integer value of Optional(123). 출력된다
}

if let actualNumber = Int(possibleNumber){
    print("The string \"\(possibleNumber)\" has an integer value fo \(actualNumber)")
}else{
    print("The string \"\(possibleNumber)\" could not be converted to an integer")
}

if let firstNumber = Int("4"), let secondNumber = Int("42"), firstNumber < secondNumber && secondNumber < 100  {
    print("\(firstNumber) < \(secondNumber) < 100")

}

