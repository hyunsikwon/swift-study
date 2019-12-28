import UIKit

struct MyStruct{
    var value : Int
    
    mutating func increase(){
        print("increase")
        value += 1 // 구조체 내부 프로퍼티 값을 변경하기 위해선 mutating 붙여줘야
    }
}

//let obj = MyStruct() // 초기값이 없으면 에러
var obj2 = MyStruct(value: 100) // 자동적으로 초기화 시켜주는 생성자가 존재

obj2.increase()
print(obj2)

var v1 = MyStruct(value: 100)
var v2 = v1
v1.value = 200
v2.value
// struct는 value type 이기 때문에 복사. v1의 변경이 v2에 영향주지 않음

class Myclass{
    var value = 0
//    weak var prop : MyStruct!
}

let c1 = Myclass()
let c2 = c1
c1.value = 100
c2.value
// class는 reference type이기 때문에. c1의 변경이 c2에 영향을 줌
// 두개의 참조가 하나의 인스턴스를 공유

enum Day : Int{ // Int타입이면 자동적으로 rawValue가 0 부터 순차적으로 생성
    case am,pm
    
//    switch e1 {
//    case Day.am:
//         print("AM")
//    case .pm:
//        print("PM")
//    }
}

Day.am
Day.pm
let enum1 = Day.am
enum1.rawValue // 0

let enum2 = Day(rawValue: 1)
enum2
let enum3 = Day(rawValue: 2) // optional type nil이 반환될 수 있기 때문에

struct Point {
    var x = 0.0, y = 0.0
}

struct Size {
    var width = 0.0, height = 0.0
}

struct Rect {
    var origin = Point()
    var size = Size()
    var center: Point { // 반드시 타입 입력해야
        get {
            let centerX = origin.x + (size.width / 2)
            let centerY = origin.y + (size.height / 2)
            return Point(x: centerX, y: centerY)
        }
        set (newCenter) {
            origin.x = newCenter.x - (size.width / 2)
            origin.y = newCenter.y - (size.height / 2)
        }
        
    }
    
}

var square = Rect(origin: Point(x: 0.0, y: 0.0),
                  size: Size(width: 10.0, height: 10.0))
let initialSquareCenter = square.center
print(initialSquareCenter)
square.center = Point(x: 15.0, y: 15.0)
print("square.origin is now at (\(square.origin.x), \(square.origin.y))")



