import UIKit

var str = "Hello, playground"

struct Stack<Element> {
    var items = [Element]()
    
    mutating func push(_ item : Element){
        items.append(item)
    }
    
    mutating func pop() -> Element {
        return items.removeLast()
    }
}


var intStack : Stack<Int> = Stack<Int>()

intStack.push(1)
intStack.push(4)
intStack.push(7)

intStack.pop()

extension Stack {
    var topElements : Element? {
        return self.items.last
    }
}

intStack.topElements

func makeDictionaryWithTwoValue<Key : Hashable, Value>(key : Key, value : Value) -> Dictionary<Key,Value> {
    let dictionary : Dictionary<Key,Value> = [key : value]
    return dictionary
}

protocol Container {
    associatedtype ItemType
    var count : Int {get}
    mutating func append(_ item : ItemType)
    subscript(i : Int) -> ItemType {get}
}

class MyContainer : Container {
    var items : Array<Int> = Array<Int>()
    
    var count: Int {
        return items.count
    }
    
    func append(_ item: Int) {
        items.append(item)
    }
    
    subscript(i : Int) -> Int {
        return items[i]
    }
}

struct IntStack : Container {
    
    var items = [Int]()
    
    mutating func push(_ item : Int) {
        items.append(item)
    }
    
    mutating func pop() -> Int {
        return items.removeLast()
    }
    
    var count: Int {
        return items.count
    }
    
    mutating func append(_ item: Int) {
        self.push(item)
    }
    
    subscript(i : Int) -> Int {
        return items[i]
    }
}

func swapTwoInts(_ a : inout Int, _ b: inout Int) {
    let temp : Int = a
    a = b
    b = temp
}

var numberOne : Int = 5
var numberTwo : Int = 10

swapTwoInts(&numberOne, &numberTwo)

func swapTwoValues<T>(_ a : inout T, _ b : inout T){
    let temp = a
    a = b
    b = temp
}


func findIndex<T : Equatable>(of valueToFind : T,in array : [T]) -> Int? {
    for (index, value) in array.enumerated() {
        if value == valueToFind {
            return index
        }
    }
    
    return nil
    
}

var arr : Array<Int> = [1, 4, 5, 0, 9, 10]

findIndex(of: 77, in: arr)
