//: Playground - noun: a place where people can play

import Cocoa

var arrayName = Array<Int>(arrayLiteral: 34, 89, 70, 1, -24)

var arrayName2 = [Int](arrayLiteral: 34, 89, 70, 1, -24)

arrayName.append(2)
arrayName2.append(2)

arrayName.insert(-37, atIndex: 2)
arrayName2.insert(-37, atIndex: 2)


var arrayName3 = [Int](arrayLiteral: 3, 8, 9, 21)
var item = arrayName3.removeLast()
print (arrayName3)
print (item)

item = arrayName3.removeAtIndex(1)
print (arrayName3)
print (item)

arrayName3.removeAll()

var flag = arrayName3.isEmpty

var total = arrayName3.count

var arrayNew = [Int](arrayLiteral: 12, 302, -87, 9)
var stuff = arrayNew[2]
print (stuff)
arrayNew[2] = 91
print (arrayNew)


var myArray = [String](arrayLiteral: "Bob", "Fred", "Jane", "Mary")
let backwardsArray = myArray.reverse()

myArray.sort { $0 < $1 }
print (myArray)
myArray.sort { $1 < $0 }
print (myArray)


