//: [Previous](@previous)

import Foundation


enum TwoDimensionPoint {
    case origin
    case onXAxix(Double)
    case onYAxix(Double)
    case noZeroCoordinate(Double,Double)
}

let coordinates = (3.0, 1,0)
let twoDimensionPoint : twoDimensionPoint

switch coordinates {
case (0, 0):
    twoDimensionPoint = .origin
case(_, 0):
    twoDimensionPoint = .onXAxix(coordinates.0)
case(0,_):
    twoDimensionPoint = .onYAxix(coordinates.1)
case(_,_) :
    twoDimensionPoint = .noZeroCoordinate(coordinates.0, coordinates.1)
}

let pointValue = (Double,Double)
switch twoDimensionPoint {
case .origin:
    pointValue = (0,0)
case let .onXAxix(xValue):
    pointValue = (xValue, 0)
case .onYAxix(let yValue):
    pointValue = (0,yValue)
case .noZeroCoordinate(let x, let y)
    pointValue = (x,y)
}

//: [Next](@next)
