import UIKit

var distance = 56.2

var name = "Konda"
var maxWeight = 130

print("\(maxWeight)")
print("Your max weight is \(maxWeight) pounds")
print("------------------------------------------------------------")
print("""
      Hello, All
      Welcome to Swift Programming..!
      """)
print("------------------------------------------------------------")

print("Throws an error because both variables are of different datatypes")

var x = 15
var y = 25
y=x
print("------------------------------------------------------------")

var a1 = 2
var a2 = 7
var a3 = 5
x = a1
y = a2
var z = a3
if (x>y && x>z)
    {
        print("x is greater")
    }
else if (y>z && y>x)
    {
        print("y is greater")
    }
else
    {
        print("z is greater")
    }
print("------------------------------------------------------------")

var a = 13
var b = 103

var c = a%10
var d = b%100

if (c==d)
    {
        print("last digit of both a and b are same")
    }
else
    {
        print("last digit of both a and b are not same")
    }
print("------------------------------------------------------------")

var N = 10
var i = 1
var j = N
while (i<j){
    print("\(i) \(j)", terminator: " ")
    i = i+1
    j = j-1
}
print("\t")
print("------------------------------------------------------------")

var C = 5
//var m = 1
for i in 1...C
{
    for _ in stride(from: C, to: i, by: -1)
    {
        print(terminator : " ")
    }

    for _ in 1...i
    {
        print("*",terminator : "")
    }
    print(" ")
}

print("------------------------------------------------------------")
