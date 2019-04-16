import UIKit


class User {
    private var voto: String = ""
    
    // Computed Property
    var votoCorrente: String {
        //get & set
        get {
            return self.voto.uppercased()
        }
        //set
        set (nuovoVoto){
            self.voto = nuovoVoto
        }
    }
    
    init (voto : String){
        self.voto = voto
    }
    
    func stampaVoto(){
        print ("il mio voto è \(self.voto) ")
    }
}

var valentino = User.init(voto: "pippo")
//print ("Il mio voto è \(valentino.voto)")
//valentino.stampaVoto()
print ("Il mio voto è \(valentino.votoCorrente)") // get
valentino.votoCorrente = "paperino" // sert
print ("Il mio voto è \(valentino.votoCorrente)")// get

// Array
var shoppingList = ["Eggs", "Milk", "Flour", "Baking Powder", "Bananas"]

var myIndex = 0
for item in shoppingList {
    //print("l'oggetto [\(myIndex)] è \(item)")
    myIndex+=1
}

for (index, value) in shoppingList.enumerated() {
    //print("Item \(index): \(value)")
    //print("Item \(index): \(shoppingList[index])")
}
 
 
 /*
 // Subscripts: Le classi le strutture e gli enumerator possono definire degli Subscripts e sono degli abbreviazioni per accedere a elemtni di una collezione, lista o altro.
 
 //Generics
 func swapTwoValues<Generic>(_ a: inout Generic, _ b: inout Generic) {
    let temporaryA = a
    a = b
    b = temporaryA
 }
 
 
 var someInt = 3
 var anotherInt = 107
 print ("\nsomeInt = \(someInt)")
 print ("anotherInt = \(anotherInt)")
 
 swapTwoValues(&someInt, &anotherInt)
 
 print ("\nDopo someInt = \(someInt)")
 print ("Dopo anotherInt = \(anotherInt)")
 
 var someString = "hello"
 var anotherString = "world"
 print ("\n\nsomeString = \(someString)")
 print ("anotherString = \(anotherString)")
 
 swapTwoValues(&someString, &anotherString)
 
 print ("\nDopo someString = \(someString)")
 print ("Dopo anotherString = \(anotherString)")
 */






/*
 Esercizio 2
 
 Creare un’applicazione che permetta di acquistare da un negoziante una serie di prodotti in base ad una determinata categoria:
 
 Prodotti alimentari, Indumenti, utensileria etc etc
 
 I prodotti sono gestiti da un Negoziante il quale ha delle funzionalità :
 mostrare tutte le categorie di prodotti in vendita
 mostrare tutti i prodotti in vendita per categoria
 mostrare tutti i prodotti in vendita
 vendere un prodotto; (Rimuovere)
 inserire un nuovo prodotto nella lista in base alla categoria.
 
 Un utente deve poter :
 richiedere la lista di tutti i prodotti in vendita del negoziante
 richiedere la lista di tutte le categorie in vendita del negoziante
 richiedere la lista dei prodotti in vendita del negoziante per categoria
 comprare un prodotto inserendolo in una lista di prodotti
 
 Nota :
 Una volta acquistato un elemento, questo viene aggiunto nella lista dei prodotti dell’utente e rimosso dalla lista dei prodotti in vendita del negoziante
 
 Suggerimento: Organizza gli elementi all’interno di un dizionario di array dove la chiave rappresenta la categoria ed il valore è un array di stringhe che identificano gli elementi da acquistare.
 
*/


class Buyer {
    
    let shopkeeper: Shopkeeper
    
    init(shopkeeper: Shopkeeper) {
        self.shopkeeper = shopkeeper
    }
}

//Negoziante
class Shopkeeper {
   
    var products: [String : [String]] = [:]
    
    init(products : [String : [String]]){
        self.products = products
    }
    
    func showCategory() {
        for (key, _) in self.products {
            print("Category = \(key)")
        }
    }
    
    
    func getCategory() -> [String]? {
        return Array(self.products.keys)
    }
    
    func getCategory_() -> String?{
        return cleanString(arrayOfString: Array(self.products.keys))
    }
    
    
    func getProductsFrom(category: String) -> [String]? {
        
        var arrayOfProduct: [String]? = nil

        if !self.products.keys.contains(category){
            return nil
        }
        for (key, value) in self.products{
            if key == category {
                arrayOfProduct = value
                break
            }
        }
        return arrayOfProduct
    }
    
    // versione che ritorna una stringa
    func getProductsFrom_(category: String) -> String? {
        
        var arrayOfProduct: [String]? = nil
        
        if !self.products.keys.contains(category){
            return nil
        }
        for (key, value) in self.products{
            if key == category {
                arrayOfProduct = value
                break
            }
        }
        return cleanString(arrayOfString: arrayOfProduct!)
    }
    
    
    func allProduct()-> [String]? {
        
        var arrayReturn: [String] = []
        
        for (_, value) in self.products {
            arrayReturn += value
        }
        
        return arrayReturn
    }
    
    
    func allProduct_() -> String? {
        
        var arrayReturn: [String] = []
        
        for (_, value) in self.products {
            arrayReturn += value
        }
        return cleanString(arrayOfString: arrayReturn)
    }
    
    
    
    func cleanString(arrayOfString: [String]) -> String {
        var str = ""
        for cat in arrayOfString {
            //print("cat is = \(cat)")
            str += cat+", "
            str = str.capitalized
        }
        //str.popLast()     // togli l'ultimo carattere
        str.removeLast(2)   // toglie gli ultimi "n" caratteri
    
        return str
    }

    
    func buy(item: String, byCategory: String) -> String?{
        
        var indexToRemove:Int?
        
        if Array(self.products.keys).contains(byCategory) {
            for (key, value) in self.products {
                if(key == byCategory){
                    for (index, value) in value.enumerated() {
                        if (value == item) {
                            indexToRemove = index
                            break
                        }
                    }
                }
            }
            
            if indexToRemove != nil {
                print("IndexToRemove = \(indexToRemove!)")
                self.products[byCategory]?.remove(at: indexToRemove!)
                return item
            }
            else {
                return nil
            }
        }
        else {
            return nil
            //self.products.updateValue([item], forKey: byCategory)
        }
    }

    
    func addNew(item: String, byCategory: String){
        if Array(self.products.keys).contains(byCategory){
            self.products[byCategory]?.append(item)
        }else {
            self.products.updateValue([item], forKey: byCategory)
        }
    }
    
}



func cleanString(arrayOfString: [String]) -> String{
    var str = ""
    for cat in arrayOfString{
        //print("cat is = \(cat)")
        str += cat+", "
    }
    //str.popLast()     // togli l'ultimo carattere
    str.removeLast(2)   // toglie gli ultimi "n" caratteri
    return str
}


//var products: [String : [String]] = [:]

var products = [
    "Dolci" : ["patatine", "cono gelato", "pan di stelle"],
    "Indumenti" : ["maglietta maniche corte", "pantaloni"]
]

print()

// Inizializziamo il NEgoziante
var shopkeeper = Shopkeeper.init(products: products)

shopkeeper.showCategory() // banale

let buyer = Buyer.init(shopkeeper: shopkeeper)

// Inizializziamo l'utwnte
//let buyer = Buyer.init(shopkeeper: Shopkeeper.init(products: products))

print()

//print("Category are = \(shopkeeper.getCategory())")
if let category = buyer.shopkeeper.getCategory() {
    print ("\nCi sono le seguenti Categorie: \(cleanString(arrayOfString: category))")
}

if let category = buyer.shopkeeper.getCategory_() {
    print ("\nCi sono le seguenti Categorie_:  \(category)")

}

print()
var catSearch = "Dolci"
if let productForCat = buyer.shopkeeper.getProductsFrom(category: catSearch){
    //print ("\nProdotti per \(catSearch): \(productForCat)")
    print ("\nProdotti per \(catSearch): \(productForCat)")
}
else {
    print ("\nLa Categoria \(catSearch) non esiste")
}

if let productForCat = buyer.shopkeeper.getProductsFrom_(category: catSearch){
    print ("\nProdotti per \(catSearch)_: \(productForCat)")
}
else {
    print ("\nLa Categoria \(catSearch) non esiste")
}



print()
if let allProducts = buyer.shopkeeper.allProduct(){
    //print ("\nTutti i prodotti all'interno del Negopzio: \(allProducts)")
    print ("\n\nTutti i prodotti all'interno del Negozio: \(allProducts)")

}else {
    print ("\nNon ci sono prodotti nel negozio")
}

if let allProducts = buyer.shopkeeper.allProduct_(){
    //print ("\nTutti i prodotti all'interno del Negopzio: \(allProducts)")
    print ("\n\nTutti i prodotti all'interno del Negozio_: \(allProducts)")
    
}else {
    print ("\nNon ci sono prodotti nel Negozio_")
}



buyer.shopkeeper.addNew(item: "Martello", byCategory: "Utensili")

catSearch = "Utensili"
if let productForCat = buyer.shopkeeper.getProductsFrom(category: catSearch){
    //print ("\nProdotti per \(catSearch): \(productForCat)")
    print ("\nProdotti per \(catSearch): \(cleanString(arrayOfString: productForCat))")
}
else {
    print ("\nla categortia non esiste")
}



buyer.shopkeeper.buy(item: "cono gelato", byCategory: "Dolci")

catSearch = "Dolci"
if let productForCat = buyer.shopkeeper.getProductsFrom(category: catSearch){
    //print ("\nProdotti per \(catSearch): \(productForCat)")
    print ("\nProdotti per \(catSearch): \(cleanString(arrayOfString: productForCat))")
}
else {
    print ("\nla categortia non esiste")
}


buyer.shopkeeper.buy(item: "cono gelato", byCategory: "Dolci")

catSearch = "Dolci"
if let productForCat = buyer.shopkeeper.getProductsFrom(category: catSearch){
    //print ("\nProdotti per \(catSearch): \(productForCat)")
    print ("\nProdotti per \(catSearch): \(cleanString(arrayOfString: productForCat))")
}
else {
    print ("\nla categortia non esiste")
}



if let itemBuyed = buyer.shopkeeper.buy(item: "pantaloni", byCategory: "Indumenti"){
    print ("\nIl prodotto \(itemBuyed) è stato eliminato")
}
else {
    print ("\nIl prodotto non esiste")
}


