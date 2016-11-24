//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//String and Characters

//initializing an Empty String

var emptyString = ""
var anotherEmptyString = String()

if emptyString.isEmpty{
    print("Nothing to see here")
}

//String Mutability

var variableString = "Horse"
variableString += " is running"
print(variableString)


//Value Types
/* working with Character
 //for...in loops
 */
for character in "Dog!🐶".characters{
    print(character)
}

let catCharacters: [Character] = ["C","a","t","🐱","!"]
let catString = String(catCharacters)
print(catString)


//Concatenating Strings and Characters

let string1 = "Hello"
let string2 = " there"
var welcome = string1 + string2

var instruction = "look over"
instruction += string2

let exclamationMark: Character = "!"
welcome.append(exclamationMark)


//String Interpolation

let multiplier = 3
let message = "\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)"

//🎟 Counting Characters
let unsualMenagerie = "Koala 🐨, Snail 🐌, Penguin 🐧, Dromedary 🐪"
print("unsualMenageria has \(unsualMenagerie.characters.count) characters")


//Accessing and Modifying a String
/* String Indices
 */
let greeting = "Guten Tag!"
greeting[greeting.startIndex]

greeting[greeting.index(before: greeting.endIndex)]
//!
greeting[greeting.index(after: greeting.startIndex)]
//u
let index = greeting.index(greeting.startIndex,offsetBy: 7);greeting[index]

