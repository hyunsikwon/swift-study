import UIKit

var str = "Hello, playground"


let finalSquare = 25

var board = [Int] (repeating: 0 , count : finalSquare + 1)

board[03] = +08 ; board[06] = +11; board[09] = +09; board[10] = +02
board

board[14] = -10; board[19] = -11; board[22] = -02; board[24] = -08
board

var square = 0
var diceRoll = 0

gameLoop: while square != finalSquare {
        diceRoll += 1
    if diceRoll == 7 {
        diceRoll = 1
    }
    switch square + diceRoll {
    case finalSquare:
        
        break gameLoop
        
    case let newSqaure where newSqaure > finalSquare:
        
        continue gameLoop
        
    default:
        square += diceRoll
        square += board[square]
        
    
    }
    
}
print("Game over!")




