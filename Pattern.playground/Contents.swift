import UIKit

let string : String = "ABC"

switch string {
case _ : print(string)
}

let optionalString : String = "ABC"

//// optional("ABC") 일때만 수행
//switch optionalString {
//case "ABC"?:print(optionalString)
//
//case _? : print("Has value but not ABC")
//
//case nil : print("nil")
//
//}

let someValue : Int = 30

if case 0...100 = someValue {
    print("0 <= \(someValue) <= 100")
}

enum MainDish {
    case pasta(taste :String)
    case pizza(dough : String, topping: String)
    case chicken(sauced : Bool)
    case rice
}

var dishes : [MainDish] = []

var dinner : MainDish = .pasta(taste: "크림")
dishes.append(dinner)

if case .pasta(let taste) = dinner {
    print("\(taste) pasta")
}

dinner = .pizza(dough: "치즈 크러스트", topping: "불고기")

dishes.append(dinner)

func whatIsThis(dish: MainDish){
    guard case .pizza(let dough, let topping) = dinner else {
        print("It's not a pizza")
        return
    }
    print("\(dough) \(topping) pizza")
}

whatIsThis(dish: dinner)

dinner = .chicken(sauced: true)
dishes.append(dinner)

while case .chicken(let sauced) = dinner {
    print("\(sauced ? "양념" : "후라이드" ) 통닭")
    break
}

dinner = .rice
dishes.append(dinner)

for dish in dishes {
    switch dish {
    case .pasta(let taste): print(taste)
    case .pizza(let dough,let topping): print("\(dough), \(topping)")
    case .chicken(let sauced) : print("\(sauced ? "양념" : "후라이드")")
    case .rice : print("Just rice")
        
    }
}

let sv : Any = "Hello"

switch sv {
case is String : print("It's String")
case let value as Int: print(value + 1)
default: print("Not Int and String")
}

var point : (Int, Int) = (1,2)

switch point {
case (0,0) : print("원점")
case (-2...2,-2...2) : print("(\(point.0), \(point.1))은 원점과 가깝습니다")
default : print("(\(point.0), \(point.1))")

}
