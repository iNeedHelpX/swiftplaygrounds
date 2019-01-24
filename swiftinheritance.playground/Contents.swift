import UIKit

class Parent {
    func parentMethod () {
        print ("parent method")
    }
    func getName() {
        print("parent")
    }
}
var par = Parent()
par.parentMethod()

class Child : Parent {
    func childMethod() {
        print("this is the child method")
    }
    override func getName() {
        print("Child name")
    }
}
var c = Child()
c.childMethod()
c.parentMethod()
