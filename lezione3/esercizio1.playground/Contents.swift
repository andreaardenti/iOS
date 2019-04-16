//: Playground - noun: a place where people can play

import UIKit

var a = [0, 1, 2]
var op = a[0] + a[1]
print (op)

// ------------------------------------------ Dictionary ------------------------------------------
// Un dizionario lavora con il "formato" chiave / valore


var myDictionary = [
    "swift": "linguaggio di ios",
    "javacript": "linguaggio moderno",
    "c++": "linguaggio antico"
]
print (myDictionary)
print (myDictionary["swift"])


var perStampa = myDictionary["swift"]
print ("Stampa variabile associata a dizionario: \(perStampa)")

//optional Binding ...per non far stampare la scritta optionale
if let myValue = perStampa {
    print (myValue)
} else {
    print ("myValue non ha un valore")
}


var myDictionary2: [Int : String] = [ //dichiarazione esplicita del dizionario
    1: "linguaggio di ios",
    2: "linguaggio moderno",
    3: "linguaggio antico"
]
print (myDictionary2)

myDictionary2 [4] = "questo si che è un linguaggio"
print (myDictionary2)


//metodo della struttura dictionary per la creazione di un dizionario vuoto usando la funzione
var dict = [String : String] ()

//dichiarazione di dizionario (string stringa) vuoto
//stesso metodo di creazione di un array vuoto
var dict2: [String : String] = [:]


//modifica di un valore per chiave - la stessa sintassi si può usare per aggiungere un nuovo chiave/valore
myDictionary2.updateValue("questa è la mia modifica", forKey: 4)
print (myDictionary2)

for (key, value) in myDictionary2 {
    print("\(key): \(value)")
}





// -------------------------------------- ESERCIZI --------------------------------------
//Crea un Dizionario vuoto con chiave: Int e valore: String.
var dictExrcs: [Int : String] = [:]



//Una volta creato riempilo con valori a piacere. Poi aggiungi un nuovo elemento
//con la funzione updateValue.

dictExrcs [1] = "Automobili"
dictExrcs [2] = "Motociclette"
dictExrcs [3] = "Biciclette"

dictExrcs.updateValue("Triciclo", forKey: 4)
dictExrcs.updateValue("Quad", forKey: 5)

//ordinamento crescente - ancora non fatto da valentino
//let dictExrcsSorted = dictExrcs.sorted(by: <)
//print (dictExrcsSorted)
// ----------- o p p u r e (se voglio fare solo una stampa senza passare da una assegnazione) ------------
//print (dictExrcs.sorted(by: <))

for (key, value) in dictExrcs {
    print ("\(key): \(value)")
}



//• Se “var vettore = [11, 32, 44, 55]” è un Array di Int allora
//print(vettore[2]) stamperà?

// RISPOSTA: stampa: 44



//• Cosa fa la funzione append?

// RISPOSTA: Inserisce un elemento nell'ultima posizione di un array



//• Posso sottrarre un vettore ad un altro vettore?

// RISPOSTA: No. Posso invece sommare due array, il risultato sarà una concatenazione

var vet1 = [1,2,3,4]
var vet2 = [2,3,4,5]
var vetRes = vet1 + vet2
print (vetRes)



//• Puoi creare un Array di costanti?

// RISPOSTA: Si
let vettoreCostante = ["a", "b", "c", "d"]
print (vettoreCostante)
