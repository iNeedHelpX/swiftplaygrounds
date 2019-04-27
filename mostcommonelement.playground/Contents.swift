import UIKit
var names = ["Sally", "Jenny", "Sam", "Debra", "Rose", "Jenny", "Jenny","Sam", "Sam", "Jenny", "Jenny",]
func mostCommonElementInArray(array: [String]) -> String? {
    var result: String?
    var dictionary = [String: Int]()
    
    array.forEach {(element) in
        
        if let count = dictionary[element] {
            dictionary[element] = count + 1
            
        } else {//set value of key pair
            
            dictionary[element] = 1
        }
    }
    var max = 0
    print(dictionary)
    for (key, value) in dictionary {
        if value > max {
            max = value
            result = key
        }
    }
    
    return result
}

mostCommonElementInArray(array: names)
