import UIKit

func pigLatin(_ str: String) -> String {
    
    var pigLatinString: String = ""
    
    str.split { $0 == " " }.map {
        let firstCharacter = $0.first!
        switch firstCharacter.lowercased() {
            
        case "a", "e", "i", "o", "u":
            var word = String($0.lowercased())
            word.append(contentsOf: "way ")
            pigLatinString.append(String(word))
            
        default:
            var word = String($0.lowercased())
            let firstLetter = word.first!
            word.removeFirst()
            word.append(firstLetter)
            word.append("ay ")
            pigLatinString.append(String(word))
        }
    }
    
    let period = pigLatinString.firstIndex(of: ".")!
    pigLatinString.remove(at: period)
    pigLatinString.append(contentsOf: ".")
    
    let last = pigLatinString.lastIndex(of: " ")!
    pigLatinString.remove(at: last)
   
    return pigLatinString.firstLetterUppercased()
}

extension String {
  func firstLetterUppercased() -> String {
    guard let first = first, first.isLowercase else { return self }
    return String(first).uppercased() + dropFirst()
  }
}


pigLatin("Cats are great pets.")
//➞ "Atscay areway reatgay etspay."

pigLatin("Tom got a small piece of pie.")
//➞ "Omtay otgay away mallsay iecepay ofway iepay."

pigLatin("He told us a very exciting tale.")
//➞ "Ehay oldtay usway away eryvay excitingway aletay."
