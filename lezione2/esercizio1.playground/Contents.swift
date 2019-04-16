//: Playground - noun: a place where people can play

import UIKit

//------------------------------------------ TUPLE ------------------------------------------

let tuplaAndrea = (73, "Catania")
print (tuplaAndrea)
print ("la tupla contiene: \(tuplaAndrea)")
print (tuplaAndrea.0)
print (tuplaAndrea.1)

let (annoNascita, citta) = tuplaAndrea
print (annoNascita)
print (citta)

let person = (born: 73, name: "Andrea", surname: "Ardenti")
print (person)
print (person.born)
print (person.name)

//prova mia.... array di tuple
var arrayOfTuple = [tuplaAndrea, person] as [Any]
print (arrayOfTuple)


// ------------------------------------------ ARRAY ------------------------------------------
//dichiarazione implicita di array
var eta = [12, 23, 45]
print (eta)

//dichiarazione esplicita di array
var anni: [Int] = [27, 34, 23, 29, 65]
print (anni)
print (anni[0])

//dichiarazione espicita di array vuoto
var arrayVuoto: [String] = []
print (arrayVuoto)

//dichiarazione esplicita di array di tipo double
var arrayDouble: [Double] = [23.09877654984378543907, 22.9, 55.23, 100.34]
print (arrayDouble[0])
print (arrayDouble[1])
print (arrayDouble[2])
print (arrayDouble[3])

var arrayStringa: [String] = ["andrea", "ardenti"]
print (arrayStringa[0]) //stampa della posizione 0 dell'array
print (arrayStringa[1]) //stampa della posizione 1 dell'array
print (arrayStringa[0], arrayStringa[1]) //stampa del contenuto dell'array di ogni singola posizione
print ("\(arrayStringa[0]), \(arrayStringa[1])")

print (arrayStringa.count)

//concatenazione di array
var concatenazione: [Int] = eta + anni
print (concatenazione)

//modifica di un elemento dell'array
concatenazione[0] = 200
print (concatenazione)

//aggiungere un elemento in coda all'array
concatenazione.append(1000)
print (concatenazione)

print(concatenazione.distance(from: 0, to: 3))

//aggiungere un elemento in un punto prestabilito dell'array
concatenazione.insert(180, at: 1)
print (concatenazione)

//rimozione di un elemento ad una posizione precisa
concatenazione.remove(at: 0)
print (concatenazione)

for i in concatenazione {
    print (i)
}

//modificare un elemento di un array indicando una posizione specifica e usando un contatore
var indices = 0
for i in concatenazione {
    print (i)
    print (indices)
    if (indices == 2) {
        concatenazione[indices] = 222
    }
    indices += 1
}

print (concatenazione)

//modifica di ogni elemento dell'array moltiplicando per 3
var y = 0
for i in concatenazione {
    concatenazione[y] = 3 * i
    y += 1
}

print (concatenazione)


// ---------------------------------------------------- ESERCIZI ----------------------------------------------------

//inserire il valore dell'array (arrayOfIntDue) con posizione di indice pari, nell'array arrayNew, quindi stampare quest'ultimo
var arrayOfIntDue: [Int] = [12, 22, 32, 42, 52, 62, 72]
var arrayNew: [Int] = []

var index = 0
for i in arrayOfIntDue {
    print ("Valore: \(i) contenuto nella posizione dell'array arrayOfIntDue \(index)")
    if (index % 2 == 0) {
        arrayNew.append(arrayOfIntDue[index])
    }
    index += 1
}
print ("arrayNew contiene: \(arrayNew)")



//inserire il valore pari dell'array (arrayInt), nell'array arrayEmpty, quindi stampare quest'ultimo
var arrayInt: [Int] = [12, 23, 32, 41, 55, 62, 77]
var arrayEmpty: [Int] = []

for i in arrayInt {
    //print ("Valore: \(i) dell'array arrayInt")
    if (i % 2 == 0) {
        arrayEmpty.append(i)
    }
}
print ("arrayEmpty contiene: \(arrayEmpty)")




