//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// Control Flow
//for ...in
for index in 1...5{
    print("\(index) times 5 is \(index * 5)")
}
let base = 3
let power = 10
var answer = 1
for _ in 1...10{
    answer *= base
}
print("\(base) to the power of \(power) is \(answer)")


// for in Array
let names = ["Anna","Alex","Jack"]
for name in names{
    print("hello,\(name)")
}

//for in Dictionary
let numberOfLegs = ["splider":8,"ant":6,"cat": 4]
for (animalName,legCount) in numberOfLegs{
    print("\(animalName)s have \(legCount) legs ")

}

/* While loops
 while conditon{
    statements
 } */

let finalSquare = 25
var board = [Int](repeatElement(0, count: finalSquare + 1))

board[03] = +08;
board[06] = +11;
board[09] = +09;
board[10] = +02;
board[14] = -10;
board[19] = -11;
board[22] = -02;
board[24] = -08;
var square = 0
var diceRoll = 0
while square < finalSquare{
    diceRoll += 1
    if diceRoll == 7{
        diceRoll = 1
    }
    square += diceRoll
    if square < board.count{
        square += board[square]
    }
}
print("Game over!")

