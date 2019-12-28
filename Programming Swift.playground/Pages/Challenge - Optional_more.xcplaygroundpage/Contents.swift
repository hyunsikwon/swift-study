//: [Previous](@previous)

import Foundation

//Challenge Time - More Optionals!
//
//Using your myFavoriteSong variable from the previous challenge, use optional binding to check if it contains a value. If it does, print out the value. If it doesn’t, print "I don’t have a favorite song."

// TODO: Write solution here

var myFavoriteSong: String? = "Hello"

if let favoriteSong = myFavoriteSong {
    print(favoriteSong)
} else {
    print("I don’t have a favorite song.")
}


/*:
 Change `myFavoriteSong` to the opposite of what it is now. If it’s nil, set it to a string; if it’s a string, set it to nil. Observe how your printed result changes.
 */


/*:
 Write a function called `printNickname` that takes an optional String as a parameter. Use the `guard` statement to try to unwrap the nickname, and if it fails print an error and return. Otherwise, print the unwrapped nickname.
 */

// TODO: Write solution here

func printNickName(_ myNickName : String?) {
    guard let nickname = myNickName else {
        print("Error!")
        
        return
        
    }
    
    print(nickname)
    
}
var myNickName : String?

printNickName(myNickName)


//: [Next](@next)
