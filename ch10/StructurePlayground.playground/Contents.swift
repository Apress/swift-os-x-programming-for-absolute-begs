//: Playground - noun: a place where people can play

import Cocoa

struct pet {
    var name : String = ""
    var age : Int = 0
}

var dog = pet()
dog.name = "Fido"
dog.age = 4

print (dog.name)
print (dog.age)


struct person {
    var name : String
    var email : String
    var phone : String
    init (name: String, email: String, phone: String) {
        self.name = name
        self.email = email
        self.phone = phone
    }
}

var workers = person(name: "Sue", email: "sdk@aol.com", phone: "555-1234")

let boss = workers.name
print (boss)

workers.name = "Bo"
print (workers.email)
print (workers.phone)


