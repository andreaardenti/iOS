//  Esercizio 2
//  Creare un’applicazione che permetta di acquistare da un negoziante una serie di prodotti in base ad una determinata categoria:
//  Prodotti alimentari, Indumenti, utensileria etc etc

//  I prodotti sono gestiti da un Negoziante il quale ha delle funzionalità :
//- mostrare tutte le categorie di prodotti in vendita -DONE
//- mostrare tutti i prodotti in vendita per categoria -DONE
//- mostrare tutti i prodotti in vendita -DONE
//- vendere un prodotto; (Rimuovere)
//- inserire un nuovo prodotto nella lista in base alla categoria.

//  Un utente deve poter :
//- richiedere la lista di tutti i prodotti in vendita del negoziante
//- richiedere la lista di tutte le categorie in vendita del negoziante
//- richiedere la lista dei prodotti in vendita del negoziante per categoria
//- comprare un prodotto inserendolo in una lista di prodotti

//  Nota :
//  Una volta acquistato un elemento, questo viene aggiunto nella lista dei prodotti dell’utente e rimosso dalla lista dei prodotti in vendita del negoziante
//  Suggerimento: Organizza gli elementi all’interno di un dizionario di array dove la chiave rappresenta la categoria ed il valore è un array di stringhe che identificano gli elementi da acquistare.



import UIKit

class Negozio {
    
    var shopDict: [String : [String]] = [
        "alimentari" : ["banane", "pere", "mele", "kiwi", "melone"],
        "indumenti" : ["magliette", "pantaloni", "maglioni", "giacche", "cravatte"],
        "utensili" : ["martello", "cacciavite", "vite", "bulloni", "mazze"]
    ]
    
    init() { }
    
//FUNZIONE MOSTRA TUTTO IL DIZIONARIO
    func showAll() {
        print("--- CATEGORIE E PRODOTTI DEL NEGOZIO ---")
        for (key, value) in shopDict {
            print("CATEGORIA: \(key)")
            for product in value {
                print(" - PRODOTTO: \(product)")
            }
        }
    }
 
//FUNZIONE MOSTRA SOLO LE CATEGORIE
    func showCategory() {
        for (key, _) in shopDict {
            print("CATEGORIE PRESENTI: \(key)")
        }
    }
    
//FUNZIONA MOSTRA PRODOTTI DELLA CATEGORIA SELEZIONATA
    func showItemInCategory(cat: String) {
        for (key, value) in shopDict {
            if cat != key {
                print("Spiacente ma la categoria \(cat) non è presente nel negozio")
            } else {
                for item in value {
                    print("Gli elementi presenti nella categoria \(cat) sono: \(item)")
                }
            }
        }
    }

//FUNZIONE RIMUOVI UN ELEMENTO DA UNA CATEGORIA
    func sellProduct(product: String) {
        var indexToRemove: Int?
        for (_, value) in shopDict {
            for item in value {
                if item != product {
                    print("Spiacente ma il prodotto che vuoi eliminare non è presente nel negozio")
                } else {
                    for(index, value) in value.enumerated() {
                        if (value == product) {
                            indexToRemove = index
                            break
                        }
                    }
                    print("Il prodotto \(product) è stato rimosso dal negozio")
                    return
                }
            }
        }
    }
    
//FUNZIONE CHE AGGIUNGE UN PRODOTTO IN UNA CATEGORIA ESISTENTE
    func addProduct(category: String, product: String) {
        for item in shopDict.keys {
            if category == item {
                if var myItem = self.shopDict[item] {
                    myItem.append(product)
                    self.shopDict.updateValue(myItem, forKey: item)
                }
                print("Prodotti della categoria \(shopDict)")
            }
        }
    }
}

var auchan = Negozio.init()

auchan.showAll()
auchan.showCategory()
auchan.showItemInCategory(cat: "utensili")
auchan.sellProduct(product: "banane")
auchan.addProduct(category: "alimentari", product: "carciofi")








