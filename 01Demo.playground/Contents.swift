import UIKit

var greeting = "Hello, playground"

var name = "Konda"
print("Hello \(name)!")

var grade = "A"
print("Hello, \(name) You got the \(grade) in IOS course")

var age = 26;
print("My age is \(age). When I triple my age, It would be \(age * 3) ")

print("""
      Hello
      world!
      """)

print ("Hello All,\rWelcome to Swift programming")


print("Welcome to Swift Programming")
print("Fall 2021")
print("*************")
print("Welcome to Swift Programming" , terminator : "-" )
print("Fall 2021")


var name1 = "Konda"
print("Hello \(name1)!")

var grade1 = "A"
print("Hello, \(name1) You got the \(grade1) in IOS course")

print("Hello, \(name1)!" , terminator : "-")
print("You got the \(grade1) in IOS course")


print("The list of numbers are ")
print(1,2,3,4,5,6)
print("The new pattern is")
print(1,2,3,4,5,6, separator: "-")

print("The new pattern is", terminator: " ")
print(1,2,3,4,5,6, separator: "-")


var cricketKit = ("handGloves" ,"helmet",("bat","ball",("test","hi")))
print(cricketKit.0)
print(cricketKit.1)
print(cricketKit.2)
print(cricketKit.2.0)
print(cricketKit.2.1)
print(cricketKit.2.2.0)

let groceries = ("bread",1)
print(groceries.0)
print(groceries.1)
print(type (of: groceries))

var origin = (0, 0)
var point = origin
print(point)
