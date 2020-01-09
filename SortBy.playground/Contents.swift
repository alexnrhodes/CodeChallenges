import UIKit

func sortByLast(_ str: String) -> String {
    
    var strToReturn = ""
    
    let splitArr = str.split(separator: " ")
    
    splitArr.sorted { (x, y) -> Bool in
        "\(String(describing: x.last))" < "\(String(describing: y.last))"
    }.map { strToReturn.append("\($0) ") }
    
    let lastSpace = strToReturn.lastIndex(of: " ")
    
    strToReturn.remove(at: lastSpace!)
    
    return strToReturn
}

sortByLast("herb camera dynamic")
//    ➞ "camera herb dynamic"

sortByLast("stab traction artist approach")
//    ➞ "stab approach traction artist"

sortByLast("sample partner autonomy swallow trend")
//    ➞ "trend sample partner swallow autonomy"
