//: [Previous](@previous)

import Foundation

//Challenge Time! 😃
//
//Here are the Student and Classroom types from the last challenge on structures. You'll find instructions below on how you'll use them in this challenge.

class Student {
  let firstName: String
  let lastName: String
  var grade: Int
    
    init(firstName : String, lastName : String, grade : Int) {
        self.firstName = firstName
        self.lastName = lastName
        self.grade = grade
    }
}

class Classroom {
  let className: String
  var students: [Student]

    init(className : String, students : [Student]) {
        self.className = className
        self.students = students
    }
  var highestGrade: Int? {
    return students.map { $0.grade } .max()
  }
}
/*:
 1. Alter `Classroom` so that this `classroom` can be a constant, declared with `let`.
 */
let classroom = Classroom(
  className: "Grade Curving Basics",
  students: [
    Student(firstName: "Sally", lastName: "Seventie", grade: 70),
    Student(firstName: "Theo", lastName: "Therty", grade: 30),
    Student(firstName: "Fievel", lastName: "Fifti", grade: 50),
    Student(firstName: "Nuno", lastName: "Neintee", grade: 90)
  ]
)
classroom.highestGrade
/*:
2. Rewrite `curveGrades` to not involve copying any student.
*/
extension Classroom {
    func curveGrades() {
    guard let highestGrade = highestGrade else {
      return
    }
    
    let curveAmount = 100 - highestGrade
    
        for student in students {
            student.grade += curveAmount
        }
    students.sort { $0.grade > $1.grade }
        
  }
}
//: Use "Show Result" on the two `classroom.students` lines below to make sure `curveGrades` is working as exptected.
classroom.students
classroom.curveGrades()
classroom.students

//: [Next](@next)
