 import UIKit
 (1...100).forEach {(num) in
    switch (num.isMultiple(of: 3), num.isMultiple(of: 5)){
    case (true, true):
        print("\(num):fizzbuzz")
    case (true, false):
        print("\(num):fizz")
    case(false, true):
        print("\(num):buzz")
    default:
        print(num)
    }
 }
