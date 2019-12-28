import UIKit

class Parent{
    var value : Int
    
    init() {
        value = 0
        
    }
    
    convenience init(a : Int){
        self.init()
    }
    
    func sayHello(){
        print("hello")
    }
    
    
    
}

class Child : Parent { // 지정 init이 하나도 없는경우 자동으로 부모 지정 init 상속
    var value2: Int
    
    init(v : Int) {
        self.value2 = v
        super.init() // 위임을 해줘야함
    }
    
    override init() { //자식 클래스는 부모클래스의 모든 지정 initializer을 재정의 하였음
                        // 편의 initializer이 자동 상속
        value2 = 0
        super.init()
    }
    
    
    override func sayHello() {
        print("Hello Swift")
    }
    
}

let obj = Child(v: 10)

obj.value
obj.sayHello()

let obj2 = Child(a: 100)

class Person {
    var name : String = ""
    var age : Int = 0 {
        didSet {
            print("Person age : \(self.age)")
        }
    }
    
    var koreanAge : Int {
        return self.age + 1
    }
    
    var fullName : String {
        get {
            return self.name
        }
        set {
            self.name = newValue
        }
    }
    var introduction : String {
        return "이름 : \(name), 나이 : \(age)"
    }
    
    func speak(){
        print("가나다라마바사")
    }
    
    class func introduceClass() -> String {
        return "인류의 소원은 평화입니다"
    }
}

class Student : Person {
    var grade : String = "F"
    
    override var age: Int {
        didSet{
            print("Student age : \(self.age)")
        }
    }
    
    override var introduction: String {
        return super.introduction + " " + "학점 : \(self.grade)"
    }
    
    override var koreanAge: Int{
        get{
            return super.koreanAge
        }
        set{
            super.age = newValue - 1
        }
//        didSet{} 동시에 불가
        
    }
    
    override var fullName: String {
        didSet{
            print("Full Name : \(self.fullName)")
        }
    }
    func study(){
        print("Study hard...")
    }
    
    override func speak() {
        print("저는 학생입니다.")
    }
}

class UniversityStudent : Student {
    var major : String = ""
    
    class func introduceClass(){
        print(super.introduceClass())
    }
    
    override class func introduceClass() -> String {
        return "대학생의 소원은 A+ 입니다."
    }
    
    override func speak() {
        super.speak()
        print("대학생이죠")
    }
}

let hyunsik : Person = Person()
hyunsik.speak()

let jay : Student = Student()
jay.speak()

let jenny : UniversityStudent = UniversityStudent()
jenny.speak()

print(Person.introduceClass())
print(Student.introduceClass())
print(UniversityStudent.introduceClass() as String)
print(UniversityStudent.introduceClass() as Void)

//------------

hyunsik.name = "Hyunsik"
hyunsik.age = 23
//hyunsik.koreanAge = 24 // 읽기전용이기때문에 에러

print(hyunsik.introduction)
print(hyunsik.koreanAge)

jay.name = "Jay"
jay.age = 14
jay.koreanAge = 15

print(jay.introduction)
print(jay.koreanAge)

// -----------------


