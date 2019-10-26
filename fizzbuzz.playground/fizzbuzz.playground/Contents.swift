 import UIKit
//The fizzbuzz problem. Common question. Easy solution.

var oneHundred = [Int]()//array of numbers up to 100. Just so I don't have to type out 1-100 manually.
for i in 1...100 {
    oneHundred.append(i)
}
for num in oneHundred {
    if num % 15 == 0{
        print ("\(num) fizzbuzz")
    } else if num % 3 == 0 {
        print ("\(num) fizz")
    } else if num % 5 == 0{
        print ("\(num) buzz")
    } else {
        print(num)
    }
}

