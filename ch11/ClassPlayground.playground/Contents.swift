//: Playground - noun: a place where people can play

import Cocoa

class className {
    var name = ""
    var ID  = 0
    var salary = 0
}

var worker = className()
worker.name = "Bob"
worker.ID = 102
worker.salary = 10


var executive = className()
executive.name = "Robert"
executive.ID = 1
executive.salary = worker.salary * 100


class secondClass {
    var name : String
    var ID : Int
    var salary : Double
    init (name: String, ID: Int, salary: Double) {
        self.name = name
        self.ID = ID
        self.salary = salary
    }
}

var consultant = secondClass (name: "Joe", ID: 17, salary: 50000)


// Computed properties

class shape {
    var height : Int = 5
    var width : Int {
      return height * 2
    }
}

var rectangle = shape()
print (rectangle.height)
print (rectangle.width)

rectangle.height = 20
print (rectangle.width)



class blob {
    var height : Int = 5
    var width : Int = 10
    var area : Int {
        get {
            return height * width
        }
        set {
            height = 24
            width = 45
        }
    }
}

var cat = blob()
cat.area
cat.area = 129


class anotherBlob {
    var height : Int = 5
    var width : Int = 10
    var area : Int {
        get {
            return height * width
        }
        set (newValue) {
            height = newValue + 10
            width = newValue - 5
        }
    }
}

var CEO = anotherBlob()
print (CEO.area)
CEO.area = 247
print (CEO.height)
print (CEO.width)



class animal {
    var IQ : Int = 0
    var legs : Int = 0 {
        willSet {
            IQ += 10
        }
        didSet {
            IQ -= 3
        }
    }
}

var pet = animal()
print (pet.IQ)
pet.legs = 4
print (pet.IQ)
