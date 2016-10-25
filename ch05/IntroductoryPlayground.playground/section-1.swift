// Playground - noun: a place where people can play

import Cocoa

var cats = 4
var dogs : Int {
    get {
        return cats + 2 // Code to calculate a value
    }
    set(newValue) {
        cats = 3 * newValue
    }
}

print(dogs)
print (cats)
dogs = 5
print (dogs)
print (cats)



var minions : Int {
 get {
    return cats * 2
 }
 set(newValue) {
    cats = 3 * newValue
 }
}

minions = 3
print (cats)
print (minions)

let 😊 = "Funny symbol here"
print (😊)



var whole : Int = 4
var decimal : Double = 4.902

print (Int(decimal))
print (Double(whole))

