import UIKit

var str = "Hello, playground"

class Counter{
    var count = 0
    
    func increment(){
        self.count += 1
    }
    
    func increment(by amount: Int){
        count += amount
    }
    
    func reset(){
        count = 0
    }
    
}

let counter = Counter()

counter.increment()
counter.increment(by: 5)
counter.reset()

struct Point{
    var x = 0.0, y = 0.0
    
    func isToRightOf(x : Double) -> Bool {
        return self.x > x
    }
    
    mutating func moveBy(x deltaX: Double, y deltaY: Double) {
       self = Point(x: x + deltaX, y: y + deltaY)
    }
    
}

var somePoint = Point(x: 4.0, y: 5.0)

if somePoint.isToRightOf(x: 1.0) {
    print("This point is to the right of the line where x == 1.0")
}

somePoint.moveBy(x: 2.0, y: 4.0)

print("\(somePoint.x) , \(somePoint.y)")

enum TriStateSwitch{
    case off, low, high
    mutating func next(){
        switch self {
        case .off: self = .low
        case .low: self = .high
        case .high: self = .off
            
        }
    }
}

var ovenLight = TriStateSwitch.low

ovenLight.next()
ovenLight.next()




