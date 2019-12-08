import UIKit
/*
 
Create a function that returns the indices of all occurrences of an item in the array.

Examples
getIndices([1, 5, 5, 2, 7], 7) ➞ [4]

getIndices([1, 5, 5, 2, 7], 5) ➞ [1, 2]

getIndices([1, 5, 5, 2, 7], 8) ➞ []
Notes
If an element does not exist in an array, return [].
Arrays are zero-indexed.
Values in the array will be value-types (don't need to worry about nested arrays).
 
*/

func getIndices(_ array: [Int], _ with: Int) -> [Int] {
    var result: [Int] = []
    
    for lcv in 0..<array.count {
        if array[lcv] == with { result.append (lcv) }
    }
    return result
}
print (getIndices([1, 5, 5, 2, 7], 7)) //➞ [4]
print (getIndices([1, 5, 5, 2, 7], 5)) //➞ [1, 2]
print (getIndices([1, 5, 5, 2, 7], 8)) //➞ []
