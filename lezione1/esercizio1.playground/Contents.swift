//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
print (str) //come il console.log di javascript
print ("Ciao Andrea")

let x = 7
print (x)
// let è una costante, non può essere riassegnata
// riasseganre a x un altro valore, mi genera un errore
//let x = 9
//print (x)

var somma = 2+2
print(somma)

somma = somma - 2
print(somma)

var moltiplicazione = somma * 5
print (moltiplicazione)

//prova mia di concatenazione
print ("risultato moltiplicazione:", moltiplicazione)

//forma contratta
var d = 20
d /= 2
print("nuovo valore di d: ", d)

var altezza = 5
var larghezza = 5
var risultato = altezza * larghezza
print("risultato della moltiplicazione: ", risultato)

var aumento = 0
aumento += 1
print ("Nuovo valore di aumento incrementato di 1:", aumento)

//la riga sotto darà errore, non posso sommare una stringa ad un intero
//print (str + d)



// premendo il tasto option e cliccando sul nome della variabile, mi compare una finestra di dialogo dove viene dichiarato il tipo assegnato dal compilatore alla variabile



//dichiarazione di variabile di tipo stringa
var nome: String = "andrea"

//Per poter accedere al contenuto di una variabile optional dobbiamo utilizzare la
//seguente dicitura ! alla fine del nome della variabile. Se strs non viene inizializzato con un valore,
//allora la stampa genera un errore
var strs: String?
strs = "hello playground"
print(strs!)

//dichiarazione di varibile optionale, quindi non inserisco il valore della variabile in fase di creazione della stessa
var nonNoto: String?
print ("Valore della variabile nonNoto:", nonNoto)


//lavorare e stampare il contenuto di una variabile inizialmente dichiarata optional - OPTIONAL BINDING
var optionalName: String?
optionalName = "Andrea Ardenti"
print (optionalName)
if let name = optionalName {
    print ("Contenuto di name (sono dentro l'IF e prendo il contenuto di optionalName assegnato alla variabile name):", name)
} else {
    print ("optionalName non ha un valore settato (sono dentro l'ELSE)")
}


// ------------------------------------- TEST -------------------------------------
// 1- Test Calcolare l'area del rettangolo di altezza 3 e base 5 e stampare il suo valore
print("\n")
var exBase: Int = 5
var exAltezza: Int = 3
var area : Int = (exBase * exAltezza)
print ("Area del rettangolo: ", area)
//altro modo di fare la stampa, poi chiedo a valentino quale è la versione corretta
print ("Area del rettangolo:  \(area)")


// 2- Test Calcolare la media in Float di 4 numeri di tipo diverso e stampare il risultato /4
print("\n")
let x1: Float = 4.0
let x2 = 5.5 //viene assegnato di default il tipo DOUBLE
let x3 = 6
let x4: Double = 3.0
var media: Float = (x1 + Float(x2) + Float(x3) + Float(x4))/4 //quel float accanto al nome della variabile è un casting??
print ("La media delle x è:", media)
var mediaInt = Int(media) // assegno a mediaInt il "casting" di media?
print ("Il valore Int della media è:", mediaInt)

// 3-
/*
--Test Swift da risolvere
1) “var a= 4*2 + (25+2 * (4/2) )” quale operazione viene eseguita per prima?
2) Se converto un Double in Int ho perdita di dati?
3) Se “var x: Float = 4.32′′ è una variabile di tipo Float, cosa devo eseguire per trasformare il valore in Int?
4) Il simbolo = (Uguale) in informatica quale significato ha?
5) “var x = 4.2” di default che tipo di dato acquisirà?
6) Sai spiegarmi a cosa servono ? e ! in Swift?
 
 1) 4*2
 2) si, si perdono tutti i numeri dopo la virgola
 3) var y = Int(x)
 4) asseganzione di valore
 5) DOUBLE
 6) Optional binding --e-- Implicitly Unwrapped Optionals
 */




