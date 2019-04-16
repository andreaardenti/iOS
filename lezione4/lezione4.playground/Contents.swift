import UIKit


//la condizione che imposto nell IF deve avere come risultato un boolean (TRUE/FALSE)

var x = 0
var z = 10

if x < z {
    x = 20
    print(x)
} else {
    print ("x è maggiore di z")
}
print (z)



// ------------------------------- CICLI -------------------------------
//ciclo for che cicla in un range da 1 a 5
for index in 1...5 {
    print ("\(index) volta")
}
// oppure
var range = 1...10
for index in range {
    print ("\(index) volta")
}

//se non serve un iteratore (come index nel caso precedente) si usa un placeholder come l'underscore
for _ in 1...5 {
    print ("ciao")
}

// esempi giusto per capire lo scope della variabile
var y = 0
for _ in 1...2 {
    var y = 2
    y += 1
    print (y)
}
print (y)

print ()
var zz = 0
for _ in 1...2 {
    zz += 1
    print (zz)
}
print (zz)



// esercizi
// stampa i numeri che vanno da 3 a 8
for index in 3...8 {
    print (index)
}

//crea una variabile con valore 100. crea un ciclo in modo tale che la variabile venga incrementatao di 4 unità (104)e stampa solo i lrisultato finale
var count = 100
for _ in 1...4 {
    count += 1
}
print (count)

//creato un array di int/string e inizializzatele con 4 valori a scelta. dopo create un secondo array dello stesso tipo e copiate tramite un ciclo i valori del primo array nel secondo array. stampate il contenuto dei due array.
var array: [Int] = [1, 2, 3, 4]
var arrayDuplicate : [Int] = []

for index in array {
    arrayDuplicate.append(index)
}
print (array)
print (arrayDuplicate)

//creare un array di interi ed inserite 5 numeri, con un ciclo for stampare solo i pari
var arrayInt: [Int] = [1,2,3,4,5]
for index in arrayInt {
    if (index % 2 == 0) {
        print (index)
    }
}

//crea un array di stringhe con 4 elementi di cui 2 identici. poi con un ciclo for crea un nuovo array senza doppioni
print ()
var arrayString: [String] = ["andrea", "andrea", "giovanni", "carmelo", "andrea"]
var arrayStringDuplicate: [String] = []
var counter = 0

for item in arrayString {
    arrayStringDuplicate.append(item)
    if (arrayStringDuplicate == arrayString) {
        arrayStringDuplicate.remove(at: counter)
        counter += 1
    }
}
print (arrayString)
print (arrayStringDuplicate)

//soluzione di valentino

for item in arrayString {
    if (!arrayStringDuplicate.contains(item)) {
        arrayStringDuplicate.append(item)
    }
}

print ()
print (arrayString)
print (arrayStringDuplicate)



// --------------------------------------- WHILE ---------------------------------------
var arrayOfString: [String] = ["a","A","F","b","z","c","f"]

for item in arrayOfString {
    switch item {
    case "a","A","F": //la virgola valuta tutti i casi dichiarati
        print ("La lettera è a/A")
    case "b":
        print ("La lettera è b")
    case "c":
        print ("La lettera è c")
    case "z":
        print ("La lettera è z")
    default:
        print ("tutti gli altri casi")
    }
}


// --------------------------------------- GUARD ---------------------------------------
//func findNumber(myNum: Int) -> Bool {
//    for item in arrayInt {
//        guard item = myNum else{
//
//        }
//    }
//}



