import UIKit


//Blackjack
//Create a function that takes an array of card numbers and checks if the sum of their value exceeds 21. If the sum exceeds 21, return true and if the sum is under or equal to 21, return false. Values of the cards are as follows:
//2-10 are their value.
//J-K (face cards) count as 10.
//Aces count either as 1 or 11 - play conservatively, so that if giving an ace a value of 11 causes you to lose and 1 allows you to win, then go with 1.
//Examples
//overTwentyOne([2, 8, "J"]) ➞ false
//overTwentyOne(["A", "J", "K"]) ➞ false
//overTwentyOne([5, 5, 3, 9]) ➞ true
//overTwentyOne([2, 6, 4, 4, 5]) ➞ false
//overTwentyOne(["J", "Q", "K"]) ➞ true

func blackjack(cards: [Any]) -> Bool {
    var sum = 0
    var cardValue = 0
    
    for index in cards {
        
        if index is String {
            
            let index = index as? String
            
            switch index {
            case "K", "Q", "J":
                cardValue = 10
            case "A":
                if sum <= 10 {
                    cardValue = 11
                } else {
                cardValue = 1
                }
            default:
                break
            }
            sum += cardValue
            
        } else if index is Int {
            
            let index = index as? Int
            
            switch index {
            case  1, 2, 3, 4, 5, 6, 7, 8, 9, 10:
                cardValue = index!
            default:
                break
            }
            sum += cardValue
        }
    }
    
    if sum <= 21 {
        print(sum)
        return false
    } else {
        print(sum)
        return true
    }
}
    print(blackjack(cards: ["A", 1, 9]))
    print(blackjack(cards: ["K", 7, 8]))
    print(blackjack(cards: ["Q", 10, "J"]))


