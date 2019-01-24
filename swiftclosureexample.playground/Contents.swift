//: A UIKit based Playground for presenting user interface
  //example of closures. Closure is like a func with no name. Does math
import UIKit
var thisIsAClosure:() ->String = {
    return "yup this is a string closure"
}
thisIsAClosure()

func thisIsNotAClosure ()-> String {
    return "this is not a closure. Its a function!"
}
thisIsNotAClosure()


//Math time!!

var sumClosure: (Int, Int) -> (Int) = {
    x, y in
    return x + y
}
sumClosure(12, 32)
