import UIKit

// --------------------------------------- GUARD ---------------------------------------
var arrayInt: [Int] = [1,2,3,4,5]

//func findNumber(myNum: Int) -> Bool {
//    for item in arrayInt {
//        guard item = myNum else{
//
//        }
//    }
//}

func creaCodiceFiscale(nome: String?, cognome: String?, età: String?) ->
    String? {
        guard let veroNome = nome else { return nil }
        guard let veroCognome = cognome else { return nil }
        guard let veraEtà = età else { return nil }
        return(veroNome + veroCognome + veraEtà)
}
var fiscalCode = creaCodiceFiscale(nome: "Valentino", cognome: "Rossi" , età: "42")
var fiscalCode2 = creaCodiceFiscale(nome: "Valentino", cognome: nil , età: "42")

print(fiscalCode)
print(fiscalCode2)

//optionale binding
if let stampa = fiscalCode {
    print (stampa)
} else {
    print ("myValue non ha un valore")
}



// --------------------------------------- FUNZIONI ---------------------------------------
// funzione senza parametri in ingresso ed in uscita
func greet() {
    let greet = "Hello all!"
    print (greet)
}
greet()

// funzione senza parametri in ingresso, ma con restituzione di un tipo, in questo caso un tipo stringa
func greet2() -> String {
    let greet2 = "Ciao a tutti quanti"
    return greet2
}
print (greet2())

// funzione con parametri in ingresso
func myName(name: String) {
    let greet = "Hello, " + name + " how are you?"
    print(greet)
}
myName(name: "Andrea")

// funzione con parametro in ingresso e output
func myName2(name: String) -> String {
    let greet = "Hello, " + name + " how are you?"
    return greet
}
print (myName2(name: "Ciccio"))
//oppure assegno variable e passo la variabile
let nName = "Papà"
print (myName2(name: nName))

//esempio di funzione
func multiply(number: Int) -> Int {
    let result = number * number
    return result
}
print (multiply(number: 3))

//funzione che dato in input un array di interi stampi il numero di elementi dell'array
func countOfArray(val: [Int]) -> String {
    let result = "Array è composta da \(val.count) elementi"
    return result
}
let myArray = [2,4,5,6]
print (countOfArray(val: myArray))


// funzione moltiplica ogni elemento dell'array x 3
func multiplyArray(val: [Int]) -> [Int] {
    var newArray: [Int] = []
    for item in val {
        newArray.append(item * 3)
    }
    return newArray
}
print (multiplyArray(val: myArray))



var devDictionary = [
    "Michele": 22,
    "Giuseppe": 20,
    "Luca": 24
]

func arrayCopy(val: [String : Int]) {
    var newDictionary: [String : Int] = [:]
    for (key, value) in devDictionary {
        //print ("value = \(value)")
        if (value < 24) {
            newDictionary.updateValue(value, forKey: key)
            //print (value)
        }
        print (newDictionary)
    }
}
arrayCopy(val: devDictionary)



