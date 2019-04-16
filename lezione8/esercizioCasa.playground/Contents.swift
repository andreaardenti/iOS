import UIKit

//dichiarazione dei dizionari
var toBuy: [String : [String]] = [
    "Dolci"     : ["Torta", "Gelato", "Crispelle"],
    "Indumenti" : ["Maglietta", "Calze", "Pantaloni"]
]

var alreadyBuy: [String : [String]] = [:]

//creazione delle funzioni che restituiscono le key e le value dei dizionari
func showDictKey(dict: [String : [String]]) {
    for item in dict {
        print (item.key)
    }
}

func showDictValue(dict: [String : [String]]) {
    for item in dict {
        for value in item.value {
            print ("Valori del dizionario: \(value)")
        }
    }
}

func showDict(dict: [String : [String]]) {
    for item in dict {
        print (item)
    }
}

//funzione che aggiunge un nuovo key/value al dizionario
//riga 37, come faccio a puntare a dict (parametro della funzione...
func addToBuy(dict: [String : [String]], key: String, value: String) {
    for item in dict.keys {
        if item.hasPrefix(key) {
            toBuy[key]!.append(value)
        }
    }
}

//funzione che rimuove un elemento da un dizionario e lo aggiunge al dizionario vuoto
//riga 49 ...così punto direttamente al dizionario, come faccio a puntare al parametro dictAdd?
//idem riga 50...
func removeFromToBuy(dictRemove: [String : [String]], dictAdd: [String : [String]], key: String, value: String) {
    let itemToRemove = toBuy[key]!.index(of: value)
    for item in dictRemove.keys {
        if item.hasPrefix(key) {
            toBuy[key]!.remove(at: itemToRemove!)
            alreadyBuy[key, default: []].append(value)
        }
    }
}

print("---------- Dizionario originale ----------")
showDict(dict: toBuy)
print()

print("---------- Dizionario con aggiunta di un nuovo elemento ----------")
addToBuy(dict: toBuy, key: "Dolci", value: "Cassatelle")
showDict(dict: toBuy)

print("\n---------- Rimozione di due elementi dal dizionario ----------")
removeFromToBuy(dictRemove: toBuy, dictAdd:alreadyBuy, key: "Dolci", value: "Torta")
removeFromToBuy(dictRemove: toBuy, dictAdd:alreadyBuy, key: "Dolci", value: "Gelato")

showDict(dict: toBuy)

print("\n---------- Stampo il dizionario degli elementi acquistati ----------")
showDict(dict: alreadyBuy)


print("\n----------Creo le classi ed uso le stesse funzioni di sopra per inserimento, eliminazione, etc...----------")
class addToDictToBuy {

    init() {}
    
    func addToBuy(dict: [String : [String]], key: String, value: String) {
        for item in dict.keys {
            if item.hasPrefix(key) {
                toBuy[key]!.append(value)
            }
        }
    }
    
    func removeFromToBuy(dictRemove: [String : [String]], dictAdd: [String : [String]], key: String, value: String) {
        let itemToRemove = toBuy[key]!.index(of: value)
        for item in dictRemove.keys {
            if item.hasPrefix(key) {
                toBuy[key]!.remove(at: itemToRemove!)
                alreadyBuy[key, default: []].append(value)
            }
        }
    }
}

var model = addToDictToBuy.init()
model.addToBuy(dict: toBuy, key: "Dolci", value: "Cannolo")
model.removeFromToBuy(dictRemove: toBuy, dictAdd: alreadyBuy, key: "Dolci", value: "Crispelle")
showDict(dict: toBuy)





