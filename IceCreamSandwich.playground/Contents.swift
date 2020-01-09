import UIKit

// STARTED FROM THE BOTTOM NOW WE'RE HERE
func isIcecreamSandwich(_ str: String) -> Bool {
    var result: Bool = false
    let stringArray = str.map { $0 }
    
    
    if stringArray.first == stringArray.last {
        var count = 0
        for item in stringArray {
            if item == stringArray.first {
                count += 1
            }
            
            if count % 2 != 0 {
                result = false
            } else {
                if item != stringArray.first {
                    
                }
                
                result = true
            }
        }
    }
    
    
    
    return result
}

isIcecreamSandwich("CDC")

isIcecreamSandwich("AAABB")

isIcecreamSandwich("AA")


func isIcecreamSandwich2(_ str: String) -> Bool {
    var result: Bool = false
    var stringArray = str.map { $0 }
    
    for item in stringArray {
        if stringArray.count > 1 {
            if item == stringArray.last && item == stringArray.first && stringArray.count > 2 {
                print(item)
                stringArray.removeFirst()
                stringArray.removeLast()
                result = true
            }
        }
    }
    
    
    return result
}

isIcecreamSandwich2("CDC")

isIcecreamSandwich2("AAABB")

isIcecreamSandwich2("AA")

isIcecreamSandwich2("ZZZBBBZZZ")


