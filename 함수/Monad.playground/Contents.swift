import UIKit

var str = "Hello, playground"

let optionalArr : [Int?] = [1, 2, nil, 5]

let mappedArr : [Int?] = optionalArr.map{ $0 }
let flatmappedarr : [Int] = optionalArr.flatMap{ $0 }

print(mappedArr)
print(flatmappedarr)

let multipleContainer = [[1, 2, Optional.none], [3, Optional.none],[4, 5, Optional.none]]

let mappedMultipleContainer = multipleContainer.map{$0.map{ $0 }}
let flatmappedMultipleContainer = multipleContainer.flatMap{$0.flatMap{ $0 }}

print(mappedMultipleContainer)
print(flatmappedMultipleContainer)

