//: Playground - noun: a place where people can play

import Cocoa
import AppKit

class firstClass {
    var speed : Int = 0
    var locationX : Int = 3
    var locationY : Int = 5
    func move (X: Int, Y: Int) {
        locationX += X
        locationY += Y
    }
}

class copyCat : firstClass {
    
}

var kitten = copyCat ()
kitten.speed = 4
kitten.move(4, Y: 8)
print (kitten.locationX)
print (kitten.locationY)


class copyDog : copyCat {
    var name : String = ""
}

var puppy = copyDog()
puppy.name = "Fido"
print (puppy.name)


class animal {
    var legs : Int = 0
}

class packAnimal : animal {
    var strength : Int = 100
}

class biped : packAnimal {
    var IQ : Int = 75
}

var snake = animal()
print (snake.legs)

var mule = packAnimal()
mule.legs = 4
mule.strength = 120

var relative = biped()
relative.legs = 2
relative.strength = 55
relative.IQ = 10


class gameObject {
    var speed : Int = 0
    var locationX : Int = 3
    var locationY : Int = 3
    func move (X: Int, Y: Int) {
        locationX += X + speed
        locationY += Y + speed
    }
}

var dog = gameObject()

class flyingObject : gameObject {
    var height : Int = 0
    override func move (X: Int, Y: Int) {
        locationX += X + speed
        locationY += Y + speed
        height += (X + Y) / 2
    }
}

var bird = flyingObject()

dog.move (4, Y: 7)
bird.move (4, Y: 7)


class basicDesign {
    var location: Int {
        get {
            return 4
        }
    }
}

class newDesign : basicDesign {
    var help : Int = 0
    override var location: Int {
        get {
            return 7
        }
    }
}

var ant = basicDesign()
var fly = newDesign()
ant.location
fly.location
