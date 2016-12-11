//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Collection Types
//Array 数组
var someInts = [Int]()
print("someInts is of type [Int] with \(someInts.count) items.")

someInts.append(3)
someInts = []

var threeDoubles = Array(repeating:0.0,count:3)
//combine array
var otherThreeDoubles = Array(repeating:2.5,count: 3)
var sixDoubles = threeDoubles + otherThreeDoubles

//
var shoppingList: [String] = ["Eggs","Milks"]
print("The shopping list contains \(shoppingList.count) items")

if shoppingList.isEmpty{
    print("The shoppingList is empty")
}
else{
    print("The shoppingLis is not empty")
}
//append newDataItems
shoppingList.append("Flour")
shoppingList += ["Baking Powder"]
shoppingList += ["Chocolate","Cheese","Butter"]
//shoopingList have seven items

//下标语来获得数组中的数据，采用索引值
var firstItem = shoppingList[0]
//swift the first items always begain form 0.

//change the slected items
shoppingList[0] = "six agges"
shoppingList[4...6] = ["Bananas","Apples"]

//insert items    insert(_:at:)
shoppingList.insert("Maple Syrup", at: 0)

//remove items
let mapleSyrup = shoppingList.remove(at: 0)
let apples = shoppingList.removeLast()

//review Array
for item in shoppingList{
    print(item)
}
//Array
for (index,value) in shoppingList.enumerated(){
    print("Item \(String(index + 1)): \(value)")
}

//Set <Element>
var letters = Set<Character>()
print("letters is of type Set<Character> with \(letters.count) items.")
letters.insert("a")
letters = []

var favoriteGenres: Set = ["Rock","Classical","Hip hop"]

//visit and rebuid a Set
print("I have \(favoriteGenres.count) favorite music genres.")

if favoriteGenres.isEmpty{
    print("As far as music goes,I'm not picky")
}else{
    print("I have particular music preference.")
}

//insert(_: )
favoriteGenres.insert("Jazz")
//remove(_: )

if let removedGenre = favoriteGenres.remove("Rock"){
    print("\(removedGenre)? I'm over it.")
}else{
    print("I never much cared for that")
}

if favoriteGenres.contains("Funk"){
    print("I get up on the good foot")
}else{
    print("It's too funky in here")
}

//visit all of value in Set
for genre in favoriteGenres{
    print("\(genre)")
}


//Dictionary <Key,Value>
var airports: [String: String] = ["YYZ": "Toronto Pearsib","DUB":"Dublin"]

//visit and rebuid dicitionary
print("The dictionary of airport contains \(airports.count) items.")

if airports.isEmpty{
    print("The airports dictionary is empty")
}else{
    print("The airports dictionary is notempty")
}

airports["LHR"] = "london"
airports["LHR"] = "London Heathrow"

//updateVaule(_: forKey: )
if let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB"){
    print("The old value for DUB was (oldValue)")
}   