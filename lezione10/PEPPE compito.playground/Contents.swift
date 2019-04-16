import UIKit



class Negoziante {
    
    var dict: [String:[String]] = [:]
    
    init (dict: [String:[String]]) {
        self.dict = dict
    }
    
    func showCategory () -> String {
        var cat: String = ""
        for item in self.dict.keys {
            cat += item + ", "
        }
        cat.removeLast()
        cat.removeLast()
        return cat
    }
    
    func showProductBy (category: String) -> String {
        var product: String = ""
        for item in self.dict.keys {
            if category == item {
                if let myItem = self.dict[item] {
                    for item2 in myItem {
                        product += item2 + ", "
                    }
                }
                else {
                    return "la categoria non esiste"
                }
            }
            else {
                continue
            }
        }
        if product.isEmpty == false {
            product.removeLast()
            product.removeLast()
            return product
        }
        else {
            return "la categoria non esiste"
        }
    }
    
    func showAll () -> [String:[String]] {
        var array: [String] = []
        var products: [String:[String]] = [:]
        for item in self.dict.keys {
            if let myItem = self.dict[item] {
                for item2 in myItem {
                    array.append(item2)
                    products.updateValue(array, forKey: item)
                }
            }
        }
        return products
    }
    
    func sell (product: String) -> String {
        var index = 0
        for item in self.dict.keys {
            if index == 2 {
                index = 0
            }
            if var myItem = self.dict[item] {
                for _ in myItem {
                    if product == myItem[index] {
                        myItem.remove(at: index)
                        self.dict.updateValue(myItem, forKey: item)
                        return "l'elemento è stato rimosso con successo"
                    }
                    else {
                        index += 1
                    }
                    
                }
            }
        }
        return "l'elemento non era presente nella lista"
    }
    
    func insertNew (product: String, byCategory: String) -> [String:[String]] {
        for item in self.dict.keys {
            if byCategory == item {
                if var myItem = self.dict[item] {
                    myItem.append(product)
                    self.dict.updateValue(myItem, forKey: item)
                }
            }
        }
        return self.dict
    }
    
}


class User {
    
    
}

var dictionary: [String:[String]] = [
    "Dolci"     : ["patatine", "cono gelato", "pan di stelle"],
    "Indumenti" : ["maglietta maniche corte", "pantaloni"]
]


var marketer = Negoziante.init(dict: dictionary)
/*
//visualizzazione categorie presenti nel dizionario
print("Le categorie presenti sono: \(marketer.showCategory())")

//visualizzazione prodotti per categoria
print("La categoria Dolci ha: \(marketer.showProductBy(category: "Dolci"))")
print("La categoria Ciao ha: \(marketer.showProductBy(category: "Ciao"))")
print("La categoria Indumenti ha: \(marketer.showProductBy(category: "Indumenti"))")

//visualizzazione di tutto
print(marketer.showAll())

//vendita e rimozione prodotto
print(marketer.sell(product: "cono gelato"))
print(marketer.sell(product: "cotolette"))

//inserimento nuovo prodotto tramite categoria
print(marketer.insertNew(product: "chiacchiere", byCategory: "Dolci"))
*/
