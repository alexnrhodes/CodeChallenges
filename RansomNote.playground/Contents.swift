import UIKit

func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
    
    var mag = magazine
    var bool = true
    
    
    ransomNote.map {
        
        if mag.contains($0) {
            let index = mag.firstIndex(of: $0)!
            mag.remove(at: index)
        } else {
            bool = false
        }
    }
    
    return bool
}

canConstruct("a", "b")
