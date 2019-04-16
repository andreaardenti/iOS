//Esercizio 1. Un Fruttivendolo ha diversi tipi di frutta: mele, pere, arance etc
//etc. Ogni frutta ha un nome, peso, un prezzo (diversi per ogni tipo frutto) ed
//un codice identificativo (anche questo diverso).
//La frutta è gestita da un gestore, chiamiamolo Fruttivendolo.

//Il Fruttivendolo deve essere in grado di:
//▪ Stampare il numero dei frutti del fruttivendolo per categoria.
//Esempio: “Ci sono 3 mele, 4 pere e 2 arance”.
//▪ Stampare il valore totale del Fruttivendolo. Cioè devi sommare il
//prezzo di tutti i frutti.
//▪ Vendere un frutto. Dato il codice identificativo del frutto, lo deve
//cercare all’interno dell’array ed eliminare.
//Come suggerimento: Crea un array per ogni tipo di frutto.

import UIKit

class Fruttivendolo {
    var nome: String
    var peso: Int
    var prezzo: Double
    var cod: Int
    var count: Int = 0
    
    init(nome: String, peso: Int, prezzo: Double, cod: Int) {
        self.nome = nome
        self.peso = peso
        self.prezzo = prezzo
        self.cod = cod
    }
    
    func stampa(cat: [Fruttivendolo]) {
        print("In totale ci sono \(cat.count) \(self.nome)")
    }
    
    func price(cat: [Fruttivendolo]){
        var totalPrice: Double = 0.0
        for item in cat {
            totalPrice+=self.prezzo
        }
        print("Prezzo totale delle...: \(totalPrice)")
    }
    
    func removeFruit(cat: [Fruttivendolo]) {
        for item in cat {
            //if
        }
    }
}

var mele: [Fruttivendolo] = []
var pere: [Fruttivendolo] = []
var arance: [Fruttivendolo] = []

var mela1 = Fruttivendolo.init(nome: "pink lady", peso: 2, prezzo: 1.59, cod: 1232)
var mela2 = Fruttivendolo.init(nome: "puma", peso: 1, prezzo: 0.99, cod: 1232)
var mela3 = Fruttivendolo.init(nome: "pink lady", peso: 1, prezzo: 1.59, cod: 1232)
var pera1 = Fruttivendolo.init(nome: "conference", peso: 1, prezzo: 1.19, cod: 2253)

mele.append(mela1)
mele.append(mela2)
mele.append(mela3)
pere.append(pera1)


mela1.stampa(cat: mele)
pera1.stampa(cat: pere)

mela1.price(cat: mele)



//for i in mele {
//    print(i.nome)
//}












