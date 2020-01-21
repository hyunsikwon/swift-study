import UIKit

let names = ["byun" , "ai", "Dik", "cun"]

func sortName(first : String, second : String) -> Bool {
    return first < second
}

let sorted = names.sorted(by : sortName(first:second:))

//후행 클로져 대소문자 구분없이 오름차순
let sorted2 = names.sorted(){(a : String, b: String) -> Bool in
    return a.caseInsensitiveCompare(b) == .orderedAscending
}

print(sorted)
print(sorted2)

func makeIncrement(forIncrement amount : Int) -> (() -> Int) {
    var runningTotal = 0
    func increment() -> Int {
        runningTotal += amount
        return runningTotal
    }
    
    return increment
}

let incrementByTwo : (() -> Int) = makeIncrement(forIncrement: 2)
let sameWithIncrementByTwo : (() -> Int) = incrementByTwo

let value1 = incrementByTwo()
let value2 = sameWithIncrementByTwo()
// 같은 클로저를 참조하기 때문에 동일하 클로저가 동작한다.

typealias VoidVoidClosure = () -> Void

let firstClosure : VoidVoidClosure = {
    print("Closure a")
}

let secondClosure : VoidVoidClosure = {
    print("Closure b")
}

// --------------------------------//

let c = {(str : String) -> String in
    return "Hello \(str)!"
}

typealias StringStringClosure = (String) -> String

func perform(closure : StringStringClosure) {
    print(closure("iOS"))
}

perform(closure: c)
// perform 함수에 클로저 c를 보냄
// 클로저 c 타입과 StringStringClosure의 타입은 같아야..
// perform 함수에서 클로져 c를 closure 라는 이름으로 사용 -> "iOS"
// 클로저 c에서 str = iOS가 되어서 Hello iOS! return

let product = [
    "iMac Pro", "Macbook Pro", "MacBook Air",
    "iMac", "iPad", "iPad Pro", "apple watch"
]

var proProduct = product.filter { (name : String) -> Bool in
    return name.contains("Pro")
}

print(proProduct)

proProduct.sort(by: {(a : String, b: String) -> Bool in
    return a.caseInsensitiveCompare(b) == .orderedAscending
})
print(proProduct)

struct Track {
    var trackNumber: Int
    var trackName: String
    var starRating: Int
}

let tracks = [
    Track(trackNumber: 4, trackName: "Hello", starRating: 3),
    Track(trackNumber: 3, trackName: "A-yo", starRating: 4),
    Track(trackNumber: 1, trackName: "Bye", starRating: 3)
]

//let sortedTrack = tracks.sorted { (track1, track2) -> Bool in
//    return track1.trackName < track2.trackName
//}

//let sortedTrack = tracks.sorted { (t1, t2) in
//    return t1.trackName < t2.trackName
//}

let sortedTrack = tracks.sorted { return $0.trackName < $1.trackName}

for track in sortedTrack {
    print(track)
    
}
