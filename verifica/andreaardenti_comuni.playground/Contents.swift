import UIKit

//dizionario di stringa e array di stringhe
var citiesDict: [String : [String]] = [
    "A" : ["Arezzo", "Agrigento", "Asti", "Acireale", "Avellino"],
    "B" : ["Bari", "Brindisi", "Barletta", "Brunico", "Bologna"],
    "C" : ["Catania", "Campobasso", "Catanzaro", "Chieti", "Cuneo"]
]

func findCities(dict: [String : [String]], prefix: String) {
    //var result: [String] = []
    for item in dict {
        if (prefix.hasPrefix(item.key.uppercased()) || prefix.hasPrefix(item.key.lowercased())) {
            let result = item.value
            for value in result {
                if value.hasPrefix(prefix) {
                    print("\(value)")
                }
            }
        }
    }
}

findCities(dict: citiesDict, prefix: "Ar")







func secondFunctionFindCities(prefix: String) {
    if prefix != prefix {
        print("spiacente inserisci almeno una chiave di ricerca")
    } else {
        for item in citiesDict {
            for i in item.value {
                //print (i)
                if i.hasPrefix(prefix) {
                    print (i)
                }
            }
        }
    }
    
}

secondFunctionFindCities(prefix: "Ar")
