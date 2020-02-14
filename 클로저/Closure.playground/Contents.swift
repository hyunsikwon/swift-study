import UIKit


//func sayHello(){
//    print("Hello")
//}
//
//var fn = sayHello
//fn()
//
//func say(msg : String){
//
//}
//var fn2 = say
//
//var array = [1, 4, 2, 5, 3]
//
//var result = array.sorted(by: { (a : Int, b : Int) -> Bool in
//    return a < b
//
//})
//print(result)
//
//result = array.sorted(by: { a, b in a > b })
//print(result)
//
//array.sorted { (a, b) -> Bool in
//    return a < b
//}
//
//func add(_ i : Int, _ j : Int, _ handler : (Int) -> ()){
//    handler(i + j)
//}
//
//add(1, 2) { (result) in
//    print("1 + 2 = \(result)")
//}
//
//var strArr : Array<String> = ["Hyunsik" , "Jieun", "Wilson", "Jinja", "Nanseuk"]
//
//print(strArr)
//var res = strArr.sorted() { (a , b) in a > b }
//
//
//print(res)
//
//class Singer {
//    func playSong() {
//        print("Shake it off!")
//    }
//}
//
//func sing() -> () -> Void {
//    let taylor = Singer()
//
//    let singing = { [weak taylor] in
//        taylor?.playSong()
//        return
//    }
//
//    return singing
//}
//
//let singFunction = sing()
//singFunction()

class House {
    var ownerDetails: (() -> Void)?

    func printDetails() {
        print("This is a great house.")
    }

    deinit {
        print("I'm being demolished!")
    }
}

class Owner {
    var houseDetails: (() -> Void)?

    func printDetails() {
        print("I own a house.")
    }

    deinit {
        print("I'm dying!")
    }
}

print("Creating a house and an owner")

do { // do ensures they will be destroyed as soon as the '}' is reached:
    let house = House()
    let owner = Owner()
    
    house.ownerDetails = { [weak owner] in owner?.printDetails() }
    owner.houseDetails = { [weak house] in house?.printDetails() }

}

print("Done")

var numberOfLinesLogged = 0

let logger1 = {
    numberOfLinesLogged += 1
    print("Lines logged: \(numberOfLinesLogged)")
}

logger1()
logger1()
