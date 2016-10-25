// Playground - noun: a place where people can play

import Cocoa

// Prefix and postfix operators

var temp, temp2 : Int
temp = 1
temp2 = temp
print (++temp)
print (temp2++)
print (temp2)


// Compound assignment operators

temp = 2
temp += 57
print (temp)
temp -= 7
print (temp)


// A simple function with no parameters or return values

func simpleFunction () {
    print ("Hello")
    print ("there")
}

var i = 1
while i <= 5 {
    simpleFunction()
    i = i + 1
}


// A function with parameters

func parameterFunction (name : String) {
    print ("Hello, " + name)
}


parameterFunction("Oscar")


// A function with parameters that returns a value

func salesTax (amount: Double) -> Double {
    let currentTax = 0.075
    return amount * currentTax
}

let purchasePrice = 59.95
var total : Double
total = purchasePrice + salesTax(purchasePrice)
print ("Including sales tax, your total is =  \(total)")


// Using external parameter names

func greeting (person name : String) -> String {
    return "Hello " + name
}

var message : String
message = greeting (person: "Bob")
print (message)


func farewell (name name : String) -> String {
    return "Good-bye " + name
}

print (farewell (name: "Mary"))


var z : Double = 45
var answer : Double
answer = sqrt(z)


// Using variable parameters

func internalChange (var name : String) {
    name = name.uppercaseString
    print ("Hello " + name)
}

internalChange ("Tasha")


// Using inout parameters

func changeMe (inout name: String, age: Int) {
    print (name + " is \(age) years old")
    name = name.uppercaseString
}

var animal : String = "Oscar the cat"
changeMe (&animal, age: 2)
print (animal)



