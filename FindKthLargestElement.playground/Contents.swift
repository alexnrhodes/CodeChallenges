import UIKit

func findKthLargest(_ nums: [Int], _ k: Int) -> Int {
      
    let numbers = nums.sorted()
    
    let index = nums.count - k
    
    let value = numbers[index]
        
    return value
}


findKthLargest([3,2,1,5,6,4], 2)
findKthLargest([3,2,3,1,2,4,5,5,6], 4)
