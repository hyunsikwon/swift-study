import UIKit

var str = "Hello, playground"


struct Resolution {
    var width = 0
    var height = 0
}

class VideoMode {
    var resolution: Resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}

//클래스와 구조체 인스턴스
let someResolution = Resolution()
let someVideoMode = VideoMode()


//프로퍼티 접근
print("The width of someResolution is \(someResolution.width)")

print("The width of someVideoMode is \(someVideoMode.resolution.width)")

someVideoMode.resolution.width = 1280

print("The width of someVideoMode is \(someVideoMode.resolution.width)")


//구조체형의 맴버 초기화
let vga: Resolution = Resolution(width: 640, height: 480)

//구조체와 열거형은 값 타입
//값 타입이라는 뜻은, 이것이 함수에서 상수나 변수에 전달될 때 그 값이 복사되서 전달 된다는 의미입니다. Swift에서 모든 구조체와 열거형 타입은 값 타입입니다

let hd = Resolution(width: 1920, height: 1080)

var cinema = hd
//위 코드의 첫 줄에서 Resolution구조체의 인스턴스 hd를 선언합니다.
//그리고 hd를 cinema라는 변수에 할당 했습니다.
//그러면 이 cinema와 hd는 같을까요?
//위에서 설명드린 것과 같이 할당하는 순간 복사(copy)되기 때문에 cinema와 hd는 같지 않고 완전히 다른 인스턴스입니다.

cinema.width = 2048

print("Cinema is now \(cinema.width) pixels wide")

print("hd is now \(hd.width) pixels wide")

enum CompassPoint {
    case north, east, west, south
}

var currentDirection = CompassPoint.west

let rememberDirection = currentDirection

currentDirection = .east

if rememberDirection == .west {
    print("The remembered direction is still \(rememberDirection)")
}



