import UIKit
import Foundation

var str = "Hello, playground"
let filePath = "filePath"

do{
    try str.write(toFile: filePath, atomically: true, encoding: .utf8)
}
catch let error {
    print("Error : \(error.localizedDescription)")
}

enum CustomError : Error {
    case myFault, yourFault
}

do {
    throw CustomError.myFault // 에러 발생시키기
}
catch CustomError.myFault {
    print("myFault")
}
catch CustomError.yourFault{
    print("yourFault")
}

func inputPositive(num : Int) throws {
    guard num > 0 else {
        throw CustomError.yourFault
    }
    
    
    
}
do{
    try inputPositive(num: -1)
}
catch{
    print("양수를 입력해주세요")
}

try? inputPositive(num: -1)

