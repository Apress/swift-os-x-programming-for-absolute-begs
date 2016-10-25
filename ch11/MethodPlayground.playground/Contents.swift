//: Playground - noun: a place where people can play

import Cocoa

class countDown {
    var counter = 10
    func decrement() {
        counter--
    }
    func decrementByValue (step step : Int) {
        counter -= step
    }
}

var counter = countDown ()
counter.decrement()
counter.decrementByValue(step: 3)


class mathBrain {
    var tempValue: Float = 0
    func average (first : Float, second : Float) -> Float {
        return (first + second) / 2
    }
}

var math = mathBrain()
var temp : Float = math.average(4.0, second: 9.0)
print (temp)


class person {
    var hitPoints = 10
    var ammo = 6
    func shoot () -> Int {
        let odds = 1 + Int(arc4random_uniform(3))
        if odds == 3 {
            // Hit, randomly determine damage from 1..3
            return 1 + Int(arc4random_uniform(3))
        } else {
            return 0 // Missed
        }
    }
}

var sheriff = person ()
var outlaw = person ()

print (sheriff.shoot())
print(outlaw.shoot())
outlaw.hitPoints
