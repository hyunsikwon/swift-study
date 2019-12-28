//: [Previous](@previous)

import Foundation
//
//Challenge Time! 😃
//
//Create a structure named Student with three properties: first name, last name and grade.
//Create a structure named Classroom with two properties: the class name, and an array of students.
//Create a method that returns the highest grade in the classroom.

struct Student {
    var firstName : String
    var lastName : String
    var grade : Int
    
}

struct Classroom {
    var className : String
    var students : [Student]
    
    func getHighestGrade() -> Int? {
        return self.students.map{$0.grade}.max()
    }
}

var aClassroom = Classroom(
  className: "Usable Clock Design",
  students: [
    Student(firstName: "Jessy", lastName: "Catterwaul", grade: 70),
    Student(firstName: "Catie", lastName: "Catterwaul", grade: 95),
    Student(firstName: "Salvador", lastName: "Dalí", grade: 2)
  ]
)

aClassroom.getHighestGrade()

//Now make an extension on Classroom with a method named curveGrades(). This method should first find the difference between 100 and the highest grade, and add that amount to all students' scores. Then, it should sort the students array so it is ordered from the student with the highest score, to the one with the lowest.
//
//Hint: Remember that structures are value types, so iterating with for student in students, and attempting to modify student, won't work. (Try it; you'll get an error!) There are other solutions though!x

extension Classroom {
    mutating func curveGrades() {
        guard let hightestGrade = getHighestGrade() else {
            return
        }
        
        
        students = students.map{ [difference = 100 - hightestGrade] student in
            var student = student
            student.grade += difference
            return student
        }.sorted{ $0.grade > $1.grade}
        
    }
}

aClassroom.curveGrades()
aClassroom.students



//: [Next](@next)
