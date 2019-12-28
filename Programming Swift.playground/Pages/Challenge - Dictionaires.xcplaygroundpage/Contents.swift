//: [Previous](@previous)

import Foundation

//Challenge Time - Dictionaries!
//
//Create a dictionary with the following keys: name, profession, country, state, and city. For the values, put your own name, profession, country, state, and city.

// TODO: Write solution here
var dictionary = [
    "name" : "Hyunsik",
    "profession" : "iOS",
    "country" : "대한민국",
    "state" : "서울",
    "city" : "목동"
]

/*:
 You suddenly decide to move to Cleveland. Update your city to Cleveland, your state to Ohio, and your country to USA.
 */

// TODO: Write solution here
dictionary["city"] = "Cleveland"
dictionary["state"] = "Ohio"
dictionary["Country"] = "USA"



/*:
 Given a dictionary in the above format, write a function that prints a given person's city and state.
 */


// TODO: Write solution here

func printDictionary(_ person : [String : String]) {
    if let city = person["city"], let state = person["state"] {
        print("They live in \(city), \(state)")
    }
}

printDictionary(dictionary)

//: [Next](@next)
