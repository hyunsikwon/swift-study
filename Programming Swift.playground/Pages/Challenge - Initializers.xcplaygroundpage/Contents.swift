//: [Previous](@previous)

import Foundation

//Challenge Time! 😃
//
//Create a class named Animal that has…
//
//a single stored property named name, that is a String
//a required initializer that takes name as a parameter
//a function speak() that does nothing.

class Animal {
    var name : String
    
    required init(name : String) {
        self.name = name
    }
    
    func speak() {
        
    }
}

//Create a class named Dog that…
//
//inherits from Animal
//has a property that stores how many tricks it has learned
//implements the required initializer, defaulting the trick count to 0, and calling speak() at the end
//overrides the function speak() to greet you and says its name

class Dog : Animal {
    var tricksLeanedCount : Int
    
    convenience required init(name: String) {
        self.init(name : name, tricksLearnedCount : 0)
    }
    
    init(name : String, tricksLearnedCount : Int) {
        self.tricksLeanedCount = tricksLearnedCount
        super.init(name: name)
        speak()
    }
    
    override func speak() {
         print("Hi my name is \(name)")
    }
    
}

Dog(name: "comeon")

//Add a second (non-required) initializer to Dog that takes both the name and numTricksLearned as parameters. Then call this initializer from the required initializer.

Dog(name: "Kelly", tricksLearnedCount: 5)

//In an extension, add a convenience initializer to Dog that defaults the dog's name to your favorite dog's name, with however many tricks the dog has learned.
extension Dog {
    convenience init(tricksLearnedCount : Int = .max){
        self.init(name : "Luwa", tricksLearnedCount : tricksLearnedCount)
    }
}

Dog().tricksLeanedCount
//: [Next](@next)
