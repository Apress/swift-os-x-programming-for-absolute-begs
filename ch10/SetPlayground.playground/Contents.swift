//: Playground - noun: a place where people can play

import Cocoa

var setOne = Set([2, 45, -9, 8, -34])
var setTwo = Set<Int>()

setTwo = [34, 90, -83]

setOne.insert(65)
setTwo.insert(-381)

var temp = setOne.remove(45)
print (temp)
print (temp!)

setOne.removeAll()


var mySet = Set(["Fred", "Cindy", "Jody", "Grant"])
print (mySet.isEmpty)
mySet.count
mySet.removeAll()
print (mySet.isEmpty)

var myNewSet = Set(["John", "Oscar"])
var myOtherSet = Set(["John", "Oscar", "Sally"])
var myThirdSet = Set(["Rick", "Vinny"])

myNewSet.isSubsetOf(myOtherSet)
myOtherSet.isSupersetOf(myNewSet)
myNewSet.isDisjointWith(myThirdSet)


var firstSet = Set([1, 3, 5, 7])
var secondSet = Set([2, 4, 6, 8])
var thirdSet = Set ([1, 2, 3, 4, 5])

firstSet.union(secondSet)
secondSet.subtract(firstSet)
firstSet.subtract(secondSet)
firstSet.subtract(thirdSet)
thirdSet.subtract(firstSet)

firstSet.intersect(thirdSet)
firstSet.exclusiveOr(thirdSet)
