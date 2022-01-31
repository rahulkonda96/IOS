import UIKit

/*
When you open this file  in Xcode, it is normal that you see errors in the source code.
 */
//**************** QUESTION 1 ****************
// 1.a) Declare a variable called  distance of type Double, using type annotation
var distance: Double = 56.2
var name = "Konda"

// 1.b) Declare a constant called  maxWeight of type an Int, with a value of 130, using type annotation
var maxWeight: Int = 130

// 1.c) Print  "Your max weight is xxxx pounds", replacing the xxxx with the value of maxWeight. Use String interpolation
print("Your max weight is \(maxWeight)")
print("------------------------------------------------------------")

// 1.d) Write Swift source code to print the below in one single print statement
            /*
                Hello, All
                Welcome to Swift Programming..!
            */
print("""
      Hello, All
      Welcome to Swift Programming..!
      """)
print("------------------------------------------------------------")



//**************** END OF QUESTION 1 ****************



//**************** QUESTION 2 ****************
// 2.a) Predict what will happen when you try and execute below three statements when you uncomment the third line?

//var x = 15
//var y = 25.0
//y = x
print("Throws an error because both variables are of different datatypes")

// 2.b) Fix the error in the question 2.a
//Commented the above lines to remove the errors by reusing the same variables
var x = 15
var y = 25
y=x
print("------------------------------------------------------------")



//**************** END OF QUESTION 2 ****************



//**************** QUESTION 3 ****************
//3.a) Declare three constants x, y, z and assign the values 2, 7, 5. Write a swift code to find the largest number among the three integers.
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

//3.b) Declare 2 variables a,b and assign values 13, 103. Write a swift code to check whether the last digit of the two given  integer values are same or not.
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


//**************** END OF QUESTION 3 ****************



//**************** QUESTION 4 ****************
//using loops
//4.a) Print the numbers 1 to N in alternative order, one number from the left side (starting with one) and one number from the right side (starting from N down to 1)
//Decalare var N = 10
//expected output is 1 10 2 9 3 8 4 7 5 6
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

//4.b) If a number C is given, then print the following rhombus
//declare C = 5
//output
// Hint : use terminator in print statements and loops
//    *
//   ***
//  *****
// *******
//*********
// *******
//  *****
//   ***
//    *
var C = 5
//var m = 1
for i in 1...C
{
    for _ in stride(from: C, to: i, by: -1)
    {
        print(terminator : "  ")
    }
    for _ in stride(from: 0, to: (i*2)-1, by: 1){
        print("*", terminator : " ")
    }
    print(" ")
}
for i in stride(from: C, to: 0, by: -1){
    for _ in stride(from: C, to: i-1, by: -1){
        print(terminator : "  ")
    }
    for _ in stride(from: 1, to: (i*2)-2, by: 1){
        print("*", terminator : " ")
    }
    print(" ")
}
print("------------------------------------------------------------")

//**************** END OF QUESTION 4 ****************



//**************** QUESTION 5 ****************
// Using Strings
//5.a) Declare a String and assign the value of your own, Write a Swift code to add "A" in front of the string and print it. If the string already begins with "A", then simply print it.
var str = "Konda"
if (str.hasPrefix("A")) {
    print("\(str)")
}
else{
    print("A\(str)")
}
print("------------------------------------------------------------")

//5.b) Declare a String str1 and and assign the value of your own. Write a swift code to add the last character at the front and back of the given string and print it.
var str1 = "north"
let str2 = str1[str1.index(before: str1.endIndex)]
let str3 = str1
print("\(str2)\(str3)\(str2)")
print("------------------------------------------------------------")

//5.c) Declare a String Swift and print them in the reverse order.
var st = "Swift"
print("\(String(st.reversed()))")
print("------------------------------------------------------------")


//5.d) Write a Swift code  to check if the first or last characters are 'a' of a given string, return the given string without those 'a' characters in the first and last, otherwise return the given string.
 //declare var myString1 = "ababa"
 //expected output bab
var myString = "ababa"
if (myString[myString.index(before: myString.endIndex)] == "a" && myString[myString.startIndex] == "a"){
    myString.removeLast()
    myString.removeFirst()
    print("\(myString)")
}
else{
   print("\(myString)")
}

//**************** END OF QUESTION 5 ****************

 

