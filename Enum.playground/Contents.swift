//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, Enum"

//Enumeration Syntax
enum CompassPoint{
    case north
    case south
    case east
    case west
    //enum define here
}
enum Planet{
    case mercury,venus,earth,mars,jupiter,saturn,uranus,neptune
}
var directToHead = CompassPoint.west
directToHead = .east

//Switch
directToHead = .south
switch directToHead {
case .north:
    print("Lot if planes have a north")
case .south:
    print("Watch out of penguins")
case .east:
    print("Where the sun rises")
case .west:
    print("Where the skies are blue")
default:
    print("Not a safe palce for humans")
}

//Associated Values
enum Barcode{
    case upc(Int,Int,Int,Int)
    case qrCode(String)
}

var productBarcode = Barcode.upc(8, 12348,123123,9)
productBarcode = .qrCode("ABCDEFGHIJKLMNOPQRST")

switch productBarcode {
case .upc(let numberSystem,let manufacturer,let product,let check):
    print("UPC:\(numberSystem),\(manufacturer),\(product),\(check).")
case .qrCode(let productCode):
    print("QR Code:\(productCode).")
}
switch productBarcode {
case let .upc(numberSystem,manufacturer,product,check):
        print("UPC:\(numberSystem),\(manufacturer),\(product),\(check)")
case let .qrCode(productCode):
    print("QR Code:\(productCode)")
}



//Raw Values
enum ASCIIControlCharacter: Character{
    case tab = "\t"
    case lineFeed = "\n"
    case carriageReturn = "r"
}

//Implicityly Assigned Raw Values
enum Planets: Int {
    case mercury = 1,venus,earth,mars,jupiter,saturn,uranus,netune
}
let earthOrder = Planet.earth.hashValue

let sunserDirection = CompassPoint.west.hashValue


let positionToFind = 11
if let somePlanet = Planets(rawValue: positionToFind){
    switch somePlanet{
        case .earth:
        print("Mostly harmless")
        default:
        print("Not a safe place for humans")
    }
}else{
    print("There isn't a planet a position \(positionToFind)")
}

//Recursive Enumerations indirect
indirect enum ArithmeticExpression{
    case number(Int)
    case addition(ArithmeticExpression,ArithmeticExpression)
    case multiplication(ArithmeticExpression,ArithmeticExpression)
}

let five = ArithmeticExpression.number(5)
let four = ArithmeticExpression.number(4)
let sum = ArithmeticExpression.addition(five, four)
let product = ArithmeticExpression.multiplication(sum, ArithmeticExpression.number(2))

//Recursive Function
func evaluate(_ expression: ArithmeticExpression) -> Int{
    switch expression{
    case let .number(value):
        return value
    case let .addition(left,right):
        return evaluate(left) + evaluate(right)
    case let .multiplication(left,right):
        return evaluate(left) * evaluate(right)
    }
}
print(evaluate(product))
