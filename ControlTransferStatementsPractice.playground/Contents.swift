import UIKit

var str = "Hello, playground"



let puzzleInput = "great minds think alike"

var puzzleOutput = ""

let charactersToRemove: [Character] = ["a","e","i","o","u"]

for character in puzzleInput {
    if charactersToRemove.contains(character){
        continue
    }
    puzzleOutput.append(character)
}

print(puzzleOutput)

let age = 24

var descript = "현식이의 나이는 \(age)살 이다 "

switch age {
case 20,22,24,26:
    descript += "그리고 현식이의 나이는 짝수이다. 또한 "
    fallthrough
default:
    descript += "성인이다."
}

print(descript)



