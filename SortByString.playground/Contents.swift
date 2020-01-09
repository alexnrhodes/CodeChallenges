import UIKit


func sortByString(_ arr: [String], _ str: String) -> [String] {
    var modifiedArr: [String] = []
    let firsts = arr.map {"\(String(describing: $0.first!))"}
    print(firsts)
    var filteredLetters: [String] = []
    
    for char in str {
        if firsts.contains("\(char)") {
            filteredLetters.append("\(char)")
        }
        print(filteredLetters)
        for item in arr {
            if item.first == filteredLetters.first?.first {
                modifiedArr.append(item)
                filteredLetters.removeFirst()
            }
        }
    }
    return modifiedArr
}
sortByString(["apple", "banana", "cherry", "date"], "dbca")
sortByString(["small", "big", "medium"], "sazymtb")
sortByString(["poof", "floof", "loop"], "flatp")
