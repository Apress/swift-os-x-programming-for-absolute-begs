//: Playground - noun: a place where people can play

import Cocoa

class emptyClass {
    
}

extension emptyClass {
    var age : Int {
        get {
            return 50
        }
    }
    func retire (testAge : Int) -> String {
        if testAge < 62 {
            return "Keep working"
        } else {
            return "Time to retire"
        }
    }
}

var aWorker = emptyClass ()
aWorker.retire(65)
aWorker.age


// Protocols

protocol testMe {
    var cash : Int { get }
    var creditCheck : Int { get set }
    func purchase (price : Int) -> String
}

class windowShopper : testMe {
    var tempValue : Int = 0
    
    var cash : Int = 0
    var creditCheck : Int {
        get {
            return tempValue
        }
        set (newValue) {
            tempValue = newValue
            cash -= 10
        }
    }
    func purchase (price : Int) -> String {
        cash -= price
        return "Bought something!"
    }
}

var shopper = windowShopper ()
shopper.cash = 450
shopper.purchase (129)
shopper.cash


// Creating optional protocol members

@objc protocol person {
    var name : String { get }
    optional var age : Int { get }
    optional func move (X: Int) -> Int
}

class politician : person {
    @objc var name : String = ""
}

var candidate = politician ()
candidate.name = "John Doe"


// Inherited protocols

protocol first {
    var name : String { get }
}

protocol second {
    var ID : Int { get }
}

protocol third: first, second {
    var email : String { get }
}

class inheritProtocols : third {
    var name : String = ""
    var ID : Int = 0
    var email : String = ""
}

var friend = inheritProtocols()
friend.name = "Cindy Smith"
friend.ID = 12
friend.email = "cindysmith@isp.com"


// Bonus extension example

class kitten {
    var cuteness : Int = 100
    var fluffy : Int = 97
}

var oscar = kitten ()

extension kitten {
    var appeal : Int {
        get {
            return fluffy + cuteness
        }
        set {
            fluffy += 4
        }
    }
    func name (aString : String) -> String {
        return aString.uppercaseString
    }
    func lovableFactor (aNumber: Int) {
        cuteness += aNumber
    }
}

oscar.cuteness
oscar.fluffy
oscar.appeal
oscar.appeal = 90
oscar.fluffy
oscar.name("Pumpkin")
oscar.lovableFactor(5)
oscar.cuteness
