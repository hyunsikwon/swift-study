import UIKit


func sayHello(){
    print("Hello")
}

var fn = sayHello
fn()

func say(msg : String){
    
}
var fn2 = say

var array = [1, 4, 2, 5, 3]

var result = array.sorted(by: { (a : Int, b : Int) -> Bool in
    return a < b
    
})
print(result)

result = array.sorted(by: { a, b in a > b })
print(result)

array.sorted { (a, b) -> Bool in
    return a < b
}

func add(_ i : Int, _ j : Int, _ handler : (Int) -> ()){
    handler(i + j)
}

add(1, 2) { (result) in
    print("1 + 2 = \(result)")
}

var strArr : Array<String> = ["Hyunsik" , "Jieun", "Wilson", "Jinja", "Nanseuk"]

print(strArr)
var res = strArr.sorted() { (a , b) in a > b }


print(res)



