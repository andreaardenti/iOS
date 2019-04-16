
import UIKit

var shopDict: [String : [String]] = [
    "alimentari" : ["banane", "pere", "mele", "kiwi", "melone"],
    "indumenti" : ["magliette", "pantaloni", "maglioni", "giacche", "cravatte"],
    "utensili" : ["martello", "cacciavite", "vite", "bulloni", "mazze"]
]

func showAll() {
    for (index, value) in shopDict.enumerated() {
        print("Item \(index): \(value)")
        //print(value)
    }
}
showAll()
