import UIKit

func noOdds(_ integers: [Int]) -> [Int] {
    var oddIntegers = [Int]()
    
    for int in integers {
        if int % 2 == 1 {
            oddIntegers.append(int)
        }
    }
    
    return oddIntegers
}


print(noOdds([1,2,3,4,5,6,7,8,9]))
