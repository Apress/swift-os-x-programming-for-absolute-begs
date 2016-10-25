// Playground - noun: a place where people can play

import Cocoa

var counter : Int = 1


// A while loop

while counter <= 10 {
    print ("Hello")
    counter = counter + 1
}


// A do-while loop

counter = 1

repeat {
    print ("Goodbye")
    counter++
} while counter <= 10


// Two equivalent for loops

for var i = 1; i <= 10; i++ {
    print ("Greetings")
}

for var i = 21; i <= 120; i += 10 {
    print ("Greetings")
}


// A for-in loop

let name = "Oscar"
var nameLength = name.characters.count

for var i = 0; i < nameLength; i++ {
    print ("Hello")
}

for name in "Oscar".characters {
    print ("Hello")
}


let names = ["Oscar", "Sally", "Marty", "Louis"]
for person in names {
    print (person)
}

let employees = ["Fred", "Jane", "Sam", "Kelly"]
for person in employees {
    if person == "Sam" {
        print (person)
        break
    }
    print (person)
}
