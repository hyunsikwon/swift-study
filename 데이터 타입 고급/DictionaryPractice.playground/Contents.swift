import UIKit

var str = "Hello, playground"

//dictionary

var namesOfIntegers = [Int : String]()

namesOfIntegers[16] = "sixteen"

namesOfIntegers.count
var airports = ["대한항공" : "파란색", "아시아나" : "빨간색"]

airports.count



if airports.isEmpty{
    print("empty")
} else{
    print("not empty")
}


airports["LHR"] = "London"

// 새로운 value값이 dictionary에 들어간다. oldValue엔 기존 value가..
if let oldValue = airports.updateValue("파란색 수정", forKey: "대한항공" ){
    print(oldValue)
}

airports

if let removedValue = airports.removeValue(forKey: "LHR"){
    print(removedValue)
}

for (airportsName, airportsColor) in airports{
    print("\(airportsName) : \(airportsColor)")
}

for airportsName in airports.keys{
    print("Airport Name : \(airportsName)")
    
}

let airportsName = [String](airports.keys)
airportsName


