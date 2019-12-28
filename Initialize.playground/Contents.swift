import UIKit

class MyClass {
    var value : Int // 옵셔널도 아니고 초기값도 없기 때문에 init()필요
    var value2 : String
    
    convenience init(){
        self.init(v1: 0, v2: "Hello")
    }
    
    init(v1 : Int, v2 : String) { //designated initializer
        self.value = v1
        self.value2 = v2
    }
    
    init?(v1 : Int) { //Failable initializer
        if v1 < 0 {
            return nil
        }
        
        self.value = v1
        self.value2 = "AA"
    }
}

let obj = MyClass()
let obj2 = MyClass(v1: 10, v2: "Hello")
let obj3 = MyClass(v1: -10) // nil






