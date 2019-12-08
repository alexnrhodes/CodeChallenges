import UIKit

// Sort array of numbers in ascending order

func ascendingOrders(_ array: [Int]) -> [Int] {
    
    var newArry = array
    newArry.sort()
    
    
    return newArry
}

print(ascendingOrders([6,5,3,8,9,1,2]))
print(ascendingOrders([345,234,623,123]))
