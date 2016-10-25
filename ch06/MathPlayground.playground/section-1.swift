// Playground - noun: a place where people can play

import Cocoa

var testNumber : Double

// Rounding functions

testNumber = round(36.98)
testNumber = round(-36.98)
testNumber = round(36.08)

testNumber = floor(36.98)
testNumber = floor(-36.98)
testNumber = floor(36.08)

testNumber = ceil(36.98)
testNumber = ceil(-36.98)
testNumber = ceil(36.08)

testNumber = trunc(36.98)
testNumber = trunc(-36.98)
testNumber = trunc(36.08)


// Calculating functions

testNumber = fabs(52.64)
testNumber = fabs(-52.64)

testNumber = sqrt(5)
testNumber = cbrt(5)
testNumber = hypot(2, 3)

testNumber = fmax(34.2, 89.2)
testNumber = fmin(34.2, 89.2)


// Trigonmetry functions

testNumber = sin(1)
testNumber = cos(1)
testNumber = tan(1)

testNumber = sinh(1)
testNumber = cosh(1)
testNumber = tanh(1)

testNumber = asin(1)
testNumber = acos(1)
testNumber = atan(1)

testNumber = asinh(1)
testNumber = acosh(1)
testNumber = atanh(1)


// Exponential functions

testNumber = exp(3)
testNumber = exp2(3)
testNumber = __exp10(3)
testNumber = expm1(3)
testNumber = pow(2,4)


// Logarithmic functions

testNumber = log(3)
testNumber = log2(3)
testNumber = log10(3)
testNumber = log1p(3)


// String functions

var text : String = "Hello everyone!"

print (text.characters.count)
print (text.capitalizedString)
print (text.lowercaseString)
print (text.uppercaseString)
print (text.isEmpty)
print (text.hasPrefix ("Hello"))
print (text.hasSuffix ("world"))

var dog : Double
dog = "23.79".doubleValue

