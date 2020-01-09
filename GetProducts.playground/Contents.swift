import UIKit

func getProducts(_ arr: [Int]) -> [Int] {
    var products: [Int] = []
    var product: Int = 0 {
        didSet {
            products.append(product)
        }
    }
    arr.map {
        var array = arr
        let arrayIndex = array.firstIndex(of: $0)
        array.remove(at: arrayIndex ?? 0)
        product = array.reduce(1, *)
    }
    return products
}
getProducts([1, 7, 3, 4]) //➞ [84, 12, 28, 21]
getProducts([1, 7, 3, 4]) //➞ [84, 12, 28, 21]
getProducts([1, 2, 3, 0, 5]) //➞ [0, 0, 0, 30, 0]
