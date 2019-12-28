//
//  main.swift
//  ARC
//
//  Created by 원현식 on 02/08/2019.
//  Copyright © 2019 Hyunsik Won. All rights reserved.
//

import Foundation

//
//class Myclass {
//    var y: YourClass?
//    deinit {
//        print("deinit")
//    }
//}
//
//class YourClass {
//    weak var m : Myclass?
//    deinit {
//        print("DEINIT")
//    }
//}
//
////var obj : Myclass? = Myclass()
//
////var obj2 = obj
//
//var obj1 : Myclass? = Myclass() // MyClass reference count 1
//var obj2 : YourClass? = YourClass() // YourClass reference count 1
//
//obj1?.y = obj2 // YourClass reference count 2
//obj2?.m = obj1 // MyClass reference count 1. weak이기 때문에 카운팅 되지 않음
//
//obj1 = nil // MyClass reference count 0
//obj2 = nil // ..? obj2 의 m이 참조할 MyClass가 메모리에서 해제되었기 때문에 자동 해제..?
//
//
//class SimpleClass {
//    var value : Int = 0
//}
//
//var x : SimpleClass? = SimpleClass()
//var y = SimpleClass()
//
//let closure = { [weak x, unowned y] in
//    print(x?.value, y.value)
//
//}
//
//x = nil // y는 nil이 될 수 없다.
//
//closure()
//class Person {
//    let name : String
//    let hobby : String?
//
//    lazy var introduce: () -> String = { [unowned self] in
//
//        var introduction: String = "My name is \(self.name)"
//
//        guard let hobby = self.hobby else {
//            return introduction
//        }
//
//        introduction += " "
//        introduction += "My hobby is \(hobby)"
//
//        return introduction
//    }
//
//    init(name: String, hobby: String? = nil) {
//        self.name = name
//        self.hobby = hobby
//    }
//
//
//    deinit {
//        print("\(name) is deinitialized")
//    }
//}
//
//var sik : Person? = Person(name: "현식", hobby: "study")
//print(sik?.introduce()) // 이때 클로저는 자신의 내부의 참조 타입 변수 등을 획득하고 내부의 참조들의 참조 횟수 증가 + 자신을 프로퍼티로 갖는 Person 인스턴스의 참조횟수도 증가 시킴. 그래서 획득 목록을 통해 [unowned self]를 적용시켜 참조횟수 증가를 못하게 함
//sik = nil

print("== END")
