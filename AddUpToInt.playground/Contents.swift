import UIKit

// add each integer up to a given integer


func addUpEachInt(to number: Int) -> Int {
    
    var total = 0
    
    for index in 1...number {
        total += index
    }
    
    return total
}

addUpEachInt(to: 5)
