import UIKit

// Func
func swap<T>(_ ele1: inout T, _ ele2: inout T) {
    let temp = ele1
    ele1 = ele2
    ele2 = temp
}

var num1 = 1
var num2 = 2
swap(&num1, &num2)
print(num1, num2)

var alp1 = "A"
var alp2 = "B"
swap(&alp1, &alp2)
print(alp1, alp2)


// Class
class Rect<T> {
    var length: T
    var width: T
    
    init(length: T, width: T) {
        self.length = length
        self.width = width
    }
}
let obj1 = Rect(length: "1", width: "2")
let obj2 = Rect(length: 1, width: 2)
