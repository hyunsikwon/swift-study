//: [Previous](@previous)

import Foundation

//Challenge Time - Closures! 😎
//
//Create a constant array called names which contains some names as strings (any names will do — make sure there’s more than three though!). Now use reduce to create a string which is the concatenation of each name in the array.

// TODO: Write solution here
let names = ["Jieun", "Hyunsik", "Salsa", "Cody", "Kik", "La"]
let resultString = names.reduce("") {
    return $0 + " " + $1
}

/*:
 Using the same `names` array, first filter the array to contain only names which have more than four characters in them, and then create the same concatenation of names as in the above exercise. (Hint: you can chain these operations together.)
 */

let filterAndReduce = names.filter { $0.count > 3 }.reduce("") {
    return $0 + " " + $1
}
print(filterAndReduce)


// TODO: Write solution here

/*:
 Create a constant dictionary called `namesAndAges` which contains some names as strings mapped to ages as integers. Now use `filter` to create a dictionary containing only people under the age of 18.
 */

// TODO: Write solution here
let namesAndAges = ["Hyunsik" : 23, "Jieun" : 23, "Kike" : 13, "Kemp" : 18, "Ryu" : 10]

let reusltFilter = namesAndAges.filter { $0.value < 18 }

print(reusltFilter)

/*:
 Using the same `namesAndAges` dictionary, filter out the adults (those 18 or older) and then use `map` to convert to an array containing just the names (i.e. drop the ages).
 */

let resultFilterAndMap = namesAndAges.filter{ $0.value >= 18 }.map{ nameAndAge in
    return nameAndAge.key
}

print(resultFilterAndMap)

// TODO: Write solution here

//: [Next](@next)

