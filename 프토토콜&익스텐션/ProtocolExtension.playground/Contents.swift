import UIKit

//protocol Sendable {
//    var from : String { get }
//    var to : String { get }
//}
//
//class Message : Sendable {
//    var to: String
//    var sender : String
//    var from: String {
//        return self.sender
//    }
//
//
//    init(sender : String, receiver : String) {
//        self.sender = sender
//        self.to = receiver
//    }
//}
//
//class Mail : Sendable {
//    var from : String
//    var to: String
//
//    init(sender : String, receiver : String) {
//        self.from = sender
//        self.to = receiver
//    }
//}

protocol Reciveable {
    func received(data : Any, from : Sendable)
}

protocol Sendable {
    var from : Sendable { get }
    var to : Reciveable? { get }
    
    func send(data : Any)
    
    static func isSendableInstance(_ instance : Any) -> Bool
}

class Message : Sendable, Reciveable {
    var from: Sendable {
        return self
    }
    
    var to: Reciveable?
    
    func send(data: Any) {
        guard let receiver : Reciveable = self.to else {
            print("Message has no receiver")
            return
        }
        receiver.received(data: data, from : self.from)
    }
    
    func received(data: Any, from: Sendable) {
        print("Message received \(data) from (\(from))")
    }
    
    class func isSendableInstance(_ instance: Any) -> Bool {
        if let sendableInstance : Sendable = instance as? Sendable {
            return sendableInstance.to != nil
        }
        return false
    }
    
    
}

class Mail : Sendable, Reciveable{
    var from : Sendable {
        return self
    }
    var to: Reciveable?
    
    func send(data: Any) {
        guard let receiver : Reciveable = self.to else {
            print("Mail has no receiver")
            return
        }
        receiver.received(data: data, from: self.from)
    }
    
    func received(data: Any, from: Sendable) {
        print("Mail received \(data) from \(from)")
    }
    
    static func isSendableInstance(_ instance: Any) -> Bool {
        if let sendableInstance : Sendable = instance as? Sendable {
            return sendableInstance.to != nil
        }
        return false
    }
}


let myPhoneMessage: Message = Message()
let yourPhoneMessage: Message = Message()

myPhoneMessage.send(data: "Hello")
myPhoneMessage.to = yourPhoneMessage

myPhoneMessage.send(data: "Hello")

Message.isSendableInstance("Hello")
Message.isSendableInstance(myPhoneMessage)
Message.isSendableInstance(yourPhoneMessage)

protocol Resettable {
    mutating func reset()
}

class Person : Resettable {
    var name : String?
    var age : Int?
    
    func reset() {
        self.name = nil
        self.age = nil
    }
}

struct Point : Resettable {
    var x : Int = 0
    var y : Int = 0
    
    mutating func reset() {
        self.x = 0
        self.y = 0
    }
}

protocol Named {
    var name : String { get }
    
    init(name : String)
}

struct Pet : Named {
    var name: String
    
    init(name : String) {
        self.name = name
    }
}

class Person2 : Named {
    var name: String
    
    required init(name : String) {
        self.name = name
    }
}

class School {
    var name :String
    
    init(name : String) {
        self.name = name
    }
}

class MiddleSchool : School, Named {
    // Named를 채택하지 않은 School을 상속받아 initializer을 override하고 Named를 채택하였기 때문에 required도 만족해야함
    override required init(name : String){
        super.init(name: name)
    }
}

protocol Singing {
    func sing() // 구현부 작성 불가
}

class Dog : Singing {
    func sing(){
        print("Dog sing") //프로토콜을 체택하였으면 반드시 내부에 구현해야함
    }
}

struct Cat : Singing {
    func sing() {
         print("Cat sing")
    }
}

extension Cat {
    func run(){
        print("run")
    }
}

let sparrow = Dog()
sparrow.sing()

let cat = Cat()
cat.run()


protocol Moveable {} // 연산부는 구현이 불가능하기 때문에 extension 활용

extension Moveable {
    func move() {
        print("이동하다")
    }
    func fly() {
        print("날다")
    }
}

struct Bird : Moveable {
//    func move() {
//        print("이동하다")
//    }
//    func fly() {
//        print("날다")
//    }
}

struct AirPlane : Moveable {
//    func move() {
//        print("이동하다")
//    }
//    func fly() {
//        print("날다")
//    }
}
// 중복 코드를 모두 작성할 필요없이 프로토콜,익스텐션을 이용해서 공통으로 이용가능 -> 상속의 효과
// 구조체는 상속이 불가능하지만 이런식으로 가능

var a = Bird()
a.fly()
a.move()
var b = AirPlane()
b.fly()
b.move()

extension Int {
    var isEven : Bool {
        return self % 2 == 0
    }
    
    var isOdd : Bool {
        return self % 2 == 1
    }
}

print(2.isEven)
print(1.isOdd)
print(3.isEven)

var x = 2

print(x.isOdd)

extension Int {
    func multiply(by n : Int) -> Int {
        return self * n
    }
    
    mutating func multiplySelf(by n : Int) {
        self = self.multiply(by: n)
    }
}

extension String {
    init(intTypeNumber : Int) {
        self = "\(intTypeNumber)"
    }
    
    init(doubleTypeNumber : Double){
        self = "\(doubleTypeNumber)"
    }
}

let stringFromInt : String = String(intTypeNumber: 100)
let stringFromDouble : String = String(doubleTypeNumber: 100.0)

print(stringFromInt)
print(stringFromDouble)


class Person3 {
    var name : String
    
    init(name : String) {
        self.name = name
    }
}

extension Person3 {
    convenience init() {
        self.init(name : "Unkown")
    }
}

let someOne : Person3 = Person3()

someOne.name

extension String {
    subscript(appedValue : String) -> String {
        return self + appedValue
    }
    
    subscript(repeatCount : UInt) -> String {
        var str : String = ""
        
        for _ in 0..<repeatCount{
            str += self
        }
        
        return str
    }
}

print("abc"["def"])
print("abc"[3])

extension Int {
    enum Kind {
        case negative, zero, positive
    }
    
    var kind : Kind {
        switch self {
        case 0 :
            return .zero
        case let x where x > 0:
            return .positive
        default:
            return .negative
        }
    }
}

func printIntegerKinds(numbers : [Int]) {
    for number in numbers {
        switch number.kind {
        case .negative:
            print("- ", terminator : "")
        case .positive:
            print("+ ", terminator : "")
        default:
            print("0 ", terminator : "")
        }
    }
    print("")
}

printIntegerKinds(numbers: [3, 19, -27, 0, -6])
