import UIKit


func largestNumberSwap(number: Int) -> Bool {
    
    let number = String(number)
    
    
    let firstNumber = number[number.startIndex]
    let secondNumber = number[number.index(after: number.startIndex)]
    
    
    var originalNumberString = ""
    var swappedNumberString = ""
    
    originalNumberString.append(firstNumber)
    originalNumberString.append(secondNumber)
    
    swappedNumberString.append(secondNumber)
    swappedNumberString.append(firstNumber)
    
    let original = Int(originalNumberString)!
    let swapped = Int(swappedNumberString)!

    if original < swapped {
        return false
    } else {
       return true
    }
}

print(largestNumberSwap(number: 27))
print(largestNumberSwap(number: 43))
print(largestNumberSwap(number: 14))
print(largestNumberSwap(number: 53))
print(largestNumberSwap(number: 99))
