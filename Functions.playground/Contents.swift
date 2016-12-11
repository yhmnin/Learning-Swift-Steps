//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Fuctions 
//Defining and Calling Fuctions

func greet(person: String) -> String{
    let greeting = "Hello ," + "person" + "!"
    return greeting

}
//Simplest ways

func greetAgain(person: String) -> String{
    return "Bingo, " + "\(person)" + "! " + "a lovely girl."

}
print(greetAgain(person: "yhmnin"))
print(greet(person: "kaokao"))

/*Function Parameters and Return Values
// Funciton without Parameters
 //Function Withour Retrun Values
 */
func sayHelloWorld() -> String{
    return "Hello,world"
}
print(sayHelloWorld())

//02 Function With Multiple Parameters
func greet(person: String,alreadyGreeted: Bool) -> String{
    if alreadyGreeted{
        return greetAgain(person: person)
    }
    else {
        return greet(person: person)
    }
}

print(greet(person: "yixiaobai", alreadyGreeted: true))

//03 Function Without Retrun Types - just return a Void
func greetGod(person: String){
    print("Hello,\(person) is my God")
}
greetGod(person: "wenjun")

//04 Function Retrun Type can be ingore
func printAndCount(string: String) -> Int{
    print(string)
    return string.characters.count
    
}
func printWithoutCouting(string: String){
    let _ = printAndCount(string: string)
}
printAndCount(string: "Helloworld,and you know all the things.")
printWithoutCouting(string: "xiaoxia")

//Functions with Mutiple Return Values

func minMax(array:[Int]) -> (min:Int,max:Int){
    var currentMin = array[0]
    var currentMax = array[0]
    
    for value in array[1..<array.count]{
        if value < currentMin{
            currentMin = value
        }
        else if value > currentMax{
            currentMax = value
        }
    }
    return (currentMin,currentMax)
}
let bounds = minMax(array: [12,-20,-21,90,102,-23])
print("the smallest number is \(bounds.min),the biggest number is \(bounds.max)")

//Optinal Tuple Return Types
func minMaxOptinal(array:[Int]) -> (min:Int,max:Int)? {
    if array.isEmpty { return nil }
    var numberMin = array[0]
    var numberMax = array[0]
    
    for number in array[1..<array.count]{
        if number < numberMin{
            numberMin = number
        }
        else if number > numberMax{
            numberMax  = number
        }
    }
    return (numberMin,numberMax)
}
let loops = minMax(array: [-12,90,120,87,-30,56])
print("the min is \(loops.min),the max is \(loops.max)")

//Function Argument Labels and Parameter Names
func someFunction(firstParameterName: Int,secondParameterName: Int) {
    //In the funciton body,firstParamterName and secondParamterName
    //refer to the argument values for the first and second parameters
    
}
someFunction(firstParameterName: 1, secondParameterName: 2)

//Default Parameter Values
func someFunction(parameterWithoutDefault: Int,parameterWithDefault: Int = 12){
    
}
someFunction(parameterWithoutDefault: 3, parameterWithDefault: 6)
someFunction(parameterWithoutDefault: 67)

//Specifying Argument Labels
func someFunction (argumentLabel parameterName: Int) {
    //In the function body,parameterName refers to the argument value
    //for that parameter
    
}

func greet(person: String,comeform hometown: String) -> String{
    return "Hello \(person)! Glad you could visit from \(hometown)."
}
print(greet(person: "Bill", comeform: "Cupertino"))


//Omitting Argument Labels
func someFunction(_ firstParameterName: Int,secondParameterName: Int){
    //In the function body,firstParameterName and secondParameterName
    //refer ti the argument values for the first and second paramters
    
}
someFunction(firstParameterName: 1, secondParameterName: 2)

//Variadic Parameters
func arithmeticMean(_ numbers: Double...) -> Double{
    var total: Double = 0
    for number in numbers{
        total += number
    }
    return total/Double(numbers.count)
}

arithmeticMean(12,2,19,27)
arithmeticMean(12.21,18,4.79,2,3)

//In-Out Parameters
func swapTwoInts(_ a: inout Int,_ b: inout Int){
    let temporaryA = a
    a = b
    b = temporaryA
}
var someInt = 3
var anotherInt = 107
swapTwoInts(&someInt,&anotherInt)
print("someInt is now \(someInt), and anotherInt is now \(anotherInt)")

//Function Types
func addTwoInts(_ a: Int,_ b : Int) -> Int{
    return a + b
}
func multiplyTwoInts(_ a:Int, _ b : Int) -> Int{
    return a * b
}

func printHelloWorld(){
    print("Hello World")
}

//Using Funciton Types
var mathFunciton: (Int,Int) -> Int = addTwoInts

print("Result: \(mathFunciton(2,3))")

mathFunciton = multiplyTwoInts
print("Result: \(mathFunciton(2,3))")

let anotherMathFunction = addTwoInts

//Function Types as Parameter Types
func printMathResult(_ mathFunction: (Int,Int) -> Int,_ a:Int,_ b: Int){
    print("Result: \(mathFunciton(a, b))")
}
printMathResult(addTwoInts, 3,5)


//Funtions Types as Return Types
func stepForward(_ input: Int) -> Int{
    return input + 1
    
}
func stepBackward(_ input: Int) -> Int{
    return input - 1
}

func chooseStepFunction(backward: Bool) -> (Int) -> Int{
    return backward ? stepBackward : stepForward
}
var currentValue = 3
let moveNearerToZero = chooseStepFunction(backward: currentValue > 0)
print("Counting to zero")
while currentValue != 0{
    print("\(currentValue)...")
    currentValue = moveNearerToZero(currentValue)
}
print("zero!")

//Nested Functions
func chooseStepFunctions(backward: Bool) ->(Int) -> Int{
    func stepForward(input: Int) -> Int{return input + 1}
    func stepBackward(input: Int) -> Int{return input - 1}
    return backward ? stepBackward : stepForward
}
var currentValues = -4
let moveNearerToZeros = chooseStepFunctions(backward: currentValues > 0)
while currentValues != 0{
    print("\(currentValues)...")
    currentValues = moveNearerToZeros(currentValues)
}
print("zero")