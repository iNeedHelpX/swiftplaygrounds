//: A UIKit based Playground for presenting user interface
  
import UIKit
class Node {
    let value: Int
    var next: Node?
    
    init(value: Int, next: Node?) {
        self.value = value
        self.next = next
    }
}



class LinkedList {
    var head: Node?
    
    func displayListItems() {
        print ("items in the list:")
        var current = head
        while current != nil {
            print(current?.value ?? "")
            current = current?.next
        }
    }
    //function to insert value into list
    func insert(value: Int) {
        //empty list case
        if head == nil {
            head = Node(value: value, next: nil)
            return
        }
        var current = head
        while current?.next != nil {
            current = current?.next
        }
        current?.next = Node(value: value, next: nil)
    }
    
    //delete function. Delete item in linked list
    func deleteItem(value:Int) {
        if head?.value == value {
            head = head?.next
        }
        
        var previous: Node?
        var current = head
        
        while current != nil && current?.value != value {
            previous = current
            current = current?.next
        }
        previous?.next = current?.next
    }
    
    //inserts item in proper order. Example: if you have 1,2,5,6 and need to insert 3...inserts 3 before the 5,6.
    func insertOrder(value: Int) {
        if head == nil || head?.value ?? Int.min >= value {
            let newNode = Node(value: value, next: head)
            head = newNode
            return
        }
        var currentNode: Node? = head
        while currentNode?.next != nil && currentNode?.next?.value ?? Int.min < value {
            currentNode = currentNode?.next
        }
        currentNode?.next = Node(value: value, next: currentNode?.next)
    }

}
let myList = LinkedList()
myList.insert(value: 5)
myList.insert(value: 8)
myList.insert(value: 6)
myList.deleteItem(value: 8)
myList.displayListItems()
