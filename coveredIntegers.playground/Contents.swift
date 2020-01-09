import UIKit


func coveredIntegers(_ arrs: [[Int]]) -> Int {
    
    var ints: [Int] = []
    
    
    arrs.map { (array) in
        if array.first! + 1 == array.last! {
            array.map { ints.append($0) }
        } else {
            for x in array.first!...array.last! {
                ints.append(x)
            }
        }
    }
    print(Set(ints))
    return Set(ints).count
}

coveredIntegers([[80, 81], [1, 2], [9, 11]]) //➞ 7
// 7 Integers are covered: 1, 2, 9, 10, 11, 80, 81
coveredIntegers([[3, 6], [4, 6], [5, 6]]) //➞ 4
coveredIntegers([[1, 2], [1, 2]]) //➞ 2


