// Playground - noun: a place where people can play

import Cocoa

var x, y, z : Int

x = 35
y = 120
z = -48

x == y
x < y
x > z
y != z
z > -48


// And && operator

(y != z) && (x > z)
(y != z) && (x == y)
(x == y) && (x < y)
(z > -48) && (x == y)


// Or || operator

(y != z) || (x > z)
(y != z) || (x == y)
(x == y) || (x < y)
(z > -48) || (x == y)


// An if statement

var BooleanValue : Bool = true

if BooleanValue {
    print ("The BooleanValue is true")
}


// An if-else statement

BooleanValue = false

if BooleanValue {
    print ("The BooleanValue is true")
} else {
    print ("The BooleanValue is false")
}


// An if-else if statement

var BooleanValue2 : Bool = false
var BooleanValue3 : Bool = false

if BooleanValue {
    print ("BooleanValue is true")
} else if BooleanValue2 {
    print ("BooleanValue2 is true")
} else if BooleanValue3 {
    print ("BooleanValue3 is true")
} else {
    print ("This prints if everything else is false")
}


// A switch statement

var whatNumber : Int = 3

switch whatNumber {
    case 1: print ("The number is 1")
    case 2: print ("The number is 2")
    case 3: print ("The number is 3")
        print ("Isn't this amazing?")
    case 4: print ("The number is 4")
    case 5: print ("The number is 5")
    default: print ("The number is undefined")
}

if whatNumber == 1 {
    print ("The number is 1")
} else if whatNumber == 2 {
    print ("The number is 2")
} else if whatNumber == 3 {
    print ("The number is 3")
    print ("Isn't this amazing?")
} else if whatNumber == 4 {
    print ("The number is 4")
} else if whatNumber == 5 {
    print ("The number is 5")
} else {
    print ("The number is undefined")
}


// A switch statement checking a range of values

whatNumber = 49

switch whatNumber {
    case 1, 2, 3: print ("The number is 1")
        print ("Isn't this amazing?")
    case 4...20: print ("The number is between 4 and 20")
case 20..<49: print ("The number is between 20 and 48")
default: print ("The number is undefined")
}
