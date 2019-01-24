
import UIKit
import Darwin

enum Color: Int {
    case purple // =1 will set value rawValue to 1
    case blue
    case green
    
    init() {
        self = .purple
    }
    
    func getColor() -> String{
        switch(self){
        case .purple: return "purple"
        case .blue: return "blue"
        case .green: return "green"
        default: return "not found"
        }
    }
}

    var someColor = Color()
    print(someColor.rawValue)

var favColor = Color.purple
print(favColor.rawValue)

if (favColor == Color.purple){
    print("its purple")
}
print(favColor.getColor())
