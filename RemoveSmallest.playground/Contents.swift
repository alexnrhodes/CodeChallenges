import UIKit


func removeSmallest(_ arr: [Int]) -> [Int] {
    
    var sorted = arr.sorted()
    
    let min = sorted.min()!
    let index = sorted.firstIndex(of: min)!
    
    sorted.remove(at: index)
    
    return sorted
}


removeSmallest([1, 2, 3, 4, 5] ) //➞ [2, 3, 4, 5]

removeSmallest([5, 3, 2, 1, 4]) //➞ [5, 3, 2, 4]

removeSmallest([2, 2, 1, 2, 1]) //➞ [2, 2, 2, 1]
