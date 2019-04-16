import UIKit



func max(array: [Int]) -> Int{
    var max = 0
    for item in array {
        if (item > max) {
            max = item
        }
    }
    return max
}

func min(array: [Int]) -> Int{
    var min = array[0]
    for item in array {
        if (item < min) {
            min = item
        }
    }
    return min
}

print(max(array: [2,4,6,7,3,9,1]))
print(min(array: [2,4,6,7,3,9,1]))


//stessa funzione di sopra ma creando una funzione con due uscite

func minMaxOn(arrOfInt: [Int]) -> (min: Int, max: Int) {
    var minimum = arrOfInt[0]
    var maximum = arrOfInt[0]
    
    for val in arrOfInt {
        if val < minimum {
            minimum = val
        } else if val > maximum {
            maximum = val
        }
    }
    return (minimum, maximum)
}

var array = [7,5,4,6,8,9,90,1]
let minMax = minMaxOn(arrOfInt: array) //assegno a minMax una tupla di tipo (min: Int, max: Int)
print ("Il minimo è \(minMax.min) e il max è \(minMax.max)")



//
var myArray: [Int]? = []

func numOfItemsInto(array: [Int]?) -> Int? {
    if let array = myArray {
        return array.count
    }
    return nil
}

print(numOfItemsInto(array: [5, 3, 5, 8]) ?? 00)

//somma di due numeri di tipo optional
func sumInt(val1: Int?, val2: Int?) -> Int? {
    if let val1 = val1, let val2 = val2 {
        return val1 + val2
    }
    return nil
}

let result = sumInt(val1: 3, val2: 5)

if let result = result {
    print("La somma è: \(result)")
} else {
    print ("result = nil")
}

//esercizio 4: media di interi di un array

func averageOfInt(array: [Int]) -> Double {
    var sum = 0.0
    for value in array {
        sum += Double(value)
    }
    let result = sum / Double(array.count)
    return result
}

let mySum = averageOfInt(array: [2,5,7,1,18])
print ("La media è: \(mySum)")



//esercizio 5: funzione che dato in input numero di telefono e prefisso, ritorni lo stato del numero di telefono
//output ---> "Il numero di telefono 03450348540458 è italiano"

var country: [Int : String] = [
    0039: "Italiano",
    0041: "Svizzera",
    0028: "Boh"
]
//print (country[0039] ?? 0)
print()
print (country.keys)
print (country.values)
print()


func insertNumber(prefix: Int, phoneNumber: Int) -> String? {
    for i in country {
        if prefix != prefix  {
            return ("spiacente non hai inserito alcun numero")
        } else if i.key == prefix {
            return ("Il numero di telefono \(prefix) \(phoneNumber) è \(i.value)")
            //return ("Il numero di telefono \(prefix ?? 0) \(number ?? 0) è \(i.value)")
        }
    }
    return "Spiacente ma il prefisso inserito non è nel database"
}

let resultOfFunctionInsertNumber = insertNumber(prefix: 0041, phoneNumber: 3332402234)
let resultOfFunctionInsertNumberBis = insertNumber(prefix: 0039, phoneNumber: 3332402234)

print(resultOfFunctionInsertNumber)

//optional binding
if let result = resultOfFunctionInsertNumber {
    print(result)
} else {
    print("La funzione non ha alcun valore")
}

//optional binding
if let result = resultOfFunctionInsertNumberBis {
    print(result)
} else {
    print("La funzione non ha alcun valore")
}








