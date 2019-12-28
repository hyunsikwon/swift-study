import UIKit

var str = "Hello, playground"


protocol Receiveable {
    func received(data : Any, from : Sendable)
}

extension Receiveable {
    func received(data : Any, from : Sendable) {
        print("\(self) received \(data) from \(from)")
    }
    
}

protocol Sendable {
    var from : Sendable {get}
    var to : Receiveable?{get}
    
    func send(data : Any)
    
    static func isSendableInstace(_ instance : Any) -> Bool
}

extension Sendable {
    
    var from : Sendable{
        return self
    }
    
    func send(data : Any) {
        guard let receiver : Receiveable = self.to else {
            print("Message has no receiver")
            return
        }
        receiver.received(data: data, from: self.from)
    }
    
    static func isSendableInstance(_ instance : Any) -> Bool {
        if let sendableInstance : Sendable = instance as? Sendable {
            return sendableInstance.to != nil
        }
        return false
    }
}

//class Message : Sendable, Receiveable {
//    var to: Receiveable?
//}
//
//class Mail : Sendable, Receiveable {
//    var to: Receiveable?
//}

protocol SelfPrintable{
    func printSelf()
}

extension SelfPrintable where Self : Container{
    func printSelf(){
        print(items)
    }
}

protocol Container : SelfPrintable {
    associatedtype ItemType
    
    var items : [ItemType] { get set}
    var count : Int {get}
    
    mutating func append(item : ItemType)
    subscript(i : Int) -> ItemType {get}
}
extension Container {
    mutating func append(item : ItemType) {
        items.append(item)
    }
    
    var count : Int {
        return items.count
    }
    
    subscript(i : Int) -> ItemType {
        return items[i]
    }
}

protocol Potable : Container {
    mutating func pop() -> ItemType?
    mutating func push(_ item : ItemType)
}

extension Potable {
    mutating func pop() -> ItemType? {
        return items.removeLast()
    }
    
    mutating func push(_ item : ItemType) {
        self.append(item : item)
    }
}

protocol Insertable: Container {
    mutating func delete() -> ItemType?
    mutating func insert(_ item : ItemType)
}

extension Insertable {
    mutating func delete() -> ItemType {
        return items.removeFirst()
    }
    
    mutating func insert(_ item : ItemType) {
        self.append(item: item)
    }
}

struct Stack<Element> : Potable {
    var items = [Element]()

    mutating func push(_ item : Element){
        items.append(item)
    }

    mutating func pop() -> Element {
        return items.removeLast()
    }

    func map<T>(transform : (Element) -> T) -> Stack<T> {
        var transformedStack : Stack<T> = Stack<T>()

        for item in items {
            transformedStack.items.append(transform(item))
            // transform은 (Element) -> T 함수
        }

        return transformedStack
    }
    
    func filter(includeElement : (Element) -> Bool) -> Stack<Element> {
        var filteredStack : Stack<ItemType> = Stack<ItemType>()
        
        for item in items {
            if includeElement(item){
                filteredStack.items.append(item)
            }
        }
        
        return filteredStack
    }

    
}


var myIntStack : Stack<Int> = Stack<Int>()

myIntStack.push(1)
myIntStack.push(5)
myIntStack.push(2)
myIntStack.printSelf()

var myStrStack : Stack<String> = myIntStack.map{(item : Int) -> String in
    return "\(item)"
}

myStrStack.printSelf()

let filteredStack : Stack<Int> = myIntStack.filter { (item : Int) -> Bool in
    return item < 5
}

filteredStack.printSelf()
