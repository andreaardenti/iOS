import UIKit

//- Cosa sono le tuple ?
//    Le tuple sono collezioni non omogenee di dati. Es: let myTuple("Profumi", True, 343.87). Ho inserito tre primitivi diversi: STRING, BOOLEAN, BOUBLE

//- Quanti modi conosci per rappresentare una tupla?
//TUPLA1: let item = (year: 2019, name: "Salsa di pomodoro", due: 2020)

//TUPLA2: let tuplaMyNAme = (72, "Andrea")
//        var arrayOfTuple = [item, tuplaMyNAme]

//- Dato un array di elementi array = [“A”, “B”,“E”, “D”] come posso effettuare la modifiche di “E” in “C”
//        var array = ["A", "B", "E", "D"]
//        array[2] = "C"
//        print(array)

//- Come posso accedere in maniera diretta al value di un Dictionary?
//      var myDict = [
//         1 : "mamma",
//         2 : "papa",
//         3: "zio"
//      ]
//      print(myDict) //stampa tutto il dizionario
//      var singleElement = myDict[1] //assegno alla variabile il contenuto del dizionario a chiave 1
//      print(singleElement) //stampo la variabile

//- Fare un esempio di Optional Binding con una variabile Optional
//        var myName: String?
//        myName = "Andrea"
//        if let name = myName {
//            print (name)
//        } else {
//            print ("Sorry but variable is empty")
//        }

//- Stesso esempio di sopra ma con Guard
//        var myName: String? = "Andrea"
//        func whoAreYou(name: String?) {
//            guard let myName = name
//                else {
//                    print("Nome nn inserito")
//                    return
//            }
//            print("Hello \(myName)")
//        }
//        whoAreYou(name: myName)

//- Cosa sono le Computed property e a cosa servono
//        Sono dei metodi (GEt e SET) che permettono di accedere al valore di un'altra property di una classe:
//            - con GET posso solo accedere al contenuto e visualizzarlo
//            - con SET posso settare un contenuto


//-------------------CODICE------------------------------------------------------------------------------------------------------------
// Un Albergo richiede la creazione un’applicazione per la gestione e prenotazione delle sue camere.
// L’albergo gestisce delle Stanze.
// Ogni camera ha un numero o stringa che le identifica univocamente.
// Esistono due tipologie di Stanza: Singola e Doppia.
// La Singola può ospitare al massimo una persona ed in più qualche singola può avere la possibilità di avere un cucinino
// la Doppia può ospitarne due, non può avere cucinino
// ma qualche Doppia potrebbe avere la possibilità di aggiungere un terzo lettino (cosa che non può avere la stanza singola)
// La camera può essere prenotata o meno.
// Una funzione dell’albergo mostra tutte le camere libere sia singole che doppie ognuna
// con le sue caratteristiche (Cucinino / Terzo lettino)
//
// Una funzione dell’Albergo permette di prenotare una camera libera in base alla scelta svolta dall’utente.
//
// (Esempio Se l’utente passa alla funzione “Singola” o “Doppia” questa cerca all’interno
// dell’albergo una stanza che non sia occupata e la prenoterà.
// Se non ci sono stanze libere, deve mandare in Output un messaggio all’utente.
// Se esiste la Stanza e questa è libera, deve prenotarla e mandare un messaggio all’utente.
// Utilizzate L’ereditarietà typeCasting e DownCasting dove serve.



//gestore camere - controllo disponibilità e stampa
class Rooms {
    var roomNumber: Int
    var reserved: Bool
    
    init(roomNumber: Int, reserved: Bool) {
        self.roomNumber = roomNumber
        self.reserved = reserved
    }
    
    func check(toCheck: Bool) -> String {
        var result: String = ""
        if toCheck == false {
            result = "available"
        } else {
            result = "not available"
        }
        return result
    }
    
    func printResult() -> String {
        let toReserve = self.check(toCheck: self.reserved)
        return "Room Number: \(self.roomNumber) \nAvailable: \(toReserve)"
    }
}

//tipologia camera che estende il gestore camere
class SingleRoom: Rooms {
    private var bed: Int = 1
    var kitchen: Bool?
    var max: Int
    {
        get{return self.bed}
    }
}

//tipologia camera che estende il gestore camere
class DoubleRoom: Rooms {
    private var bed: Int = 2
    var addBed: Bool?
    var max: Int
    {
        get{return self.bed}
    }
}

//manager che controlla le camere
class Hotel {
    var hotel: [Rooms]
    
    init(hotel: [Rooms]) {
        self.hotel = hotel
    }
    //manca ancora il controllo della kitchen/addBed
    func checkSituation() {
        var result: String = ""
        for room in self.hotel {
            if room is SingleRoom {
                let myRoom = room as! SingleRoom
                result = room.printResult()
                print(result)
            } else if room is DoubleRoom {
                let myRoom = room as! DoubleRoom
                result = room.printResult()
                print(result)
            } else {
                print(result)
            }
        }
    }
    
    //manca la funzione che controlla la disponibilità
}

var cliente1 = SingleRoom.init(roomNumber: 1, reserved: true)
var cliente2 = SingleRoom.init(roomNumber: 1, reserved: false)

var sheraton: [Rooms] = []
sheraton.append(cliente1)
sheraton.append(cliente2)

var hotel = Hotel.init(hotel: sheraton)

hotel.checkSituation()
