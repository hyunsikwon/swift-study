import UIKit

var anyVal : Any = 3

anyVal = "a"
//anyVal.upperCased() // 타입에 대한 정보가 없기 때문에 불가능

if anyVal is String {
    print("String")
}

class Animal {}
class Dog : Animal {}
class Cat : Animal {}

let obj = Cat()

let obj1 = obj as Animal // 업캐스팅은 항상 가능

let obj2 = obj1 as? Cat // 100프로 가능하지 않기때문에 ?이용
// obj2는 optional type

//let obj3 = obj1 as! Dog // 안되는 상황이 발생할 수 있기 때문에 강제는 안됨

if let obj2 = obj1 as? Cat { // if let 형태로 사용
    print("obj2 is Cat : \(obj2)")
}

class Coffee {
    let name : String
    let shot: Int
    
    var description: String{
        return "\(shot) shot(s) \(name)"
    }
    
    init(shot : Int) {
        self.shot = shot
        self.name = "coffee"
    }
}

class Latte : Coffee {
    var flavor : String
    
    override var description: String {
        return "\(shot) shot(s) \(flavor) latte"
    }
    
    init(flavor : String,shot : Int) {
        self.flavor = flavor
        super.init(shot: shot)
    }
}

class Americano : Coffee {
    let iced : Bool
    
    override var description: String {
        return "\(shot) shot(s) \(iced ? "iced" : "hot") americano"
    }
    
    init(iced : Bool, shot: Int) {
        self.iced = iced
        super.init(shot: shot)
    }
}

let coffee : Coffee = Coffee(shot: 1)
print(coffee.description)

let myCoffee : Americano = Americano(iced: false, shot: 2)
print(myCoffee.description)

let yourCoffee : Latte = Latte(flavor: "green tea", shot: 3)
print(yourCoffee.description)

print(coffee is Coffee)
print(coffee is Americano)
print(coffee is Latte)

print(myCoffee is Coffee)
print(yourCoffee is Coffee)

print(myCoffee is Latte)
print(myCoffee is Americano)

protocol SomeProtocol {}
class SomeClass: SomeProtocol {}

let intType : Int.Type = Int.self
let stringType : String.Type = String.self
let classType : SomeClass.Type = SomeClass.self
let protocolType : SomeProtocol.Protocol = SomeProtocol.self

var AnyType : Any.Type


AnyType = intType
print(AnyType)

print(type(of: coffee) == Coffee.self) // Coffee class의 인스턴스인 coffee의 타입은 당연히 Coffee, .self를 이용해서 타입을 값으로

let actingConstant : Coffee = Latte(flavor: "vanilla", shot: 2)
print(actingConstant.description)

if let actingOne: Americano = coffee as? Americano{
    print("this is Americano")
} else {
    print(coffee.description)
}

if let actingOne : Latte = coffee as? Latte{
    print("this is Latte")
} else{
    print(coffee.description)
}

if let actingOne : Coffee = coffee as? Coffee{
    print("this is coffee")
} else{
    print(coffee.description)
}

func castTypeToAppropriate(item : AnyObject) {
    if let castedItem : Latte = item as? Latte {
        print(castedItem.description)
    } else if let castedItem : Americano = item as? Americano {
        print(castedItem.description)
    } else if let catedItem : Coffee = item as? Coffee {
        print(catedItem.description)
    } else {
        print("Unknown")
    }
}
