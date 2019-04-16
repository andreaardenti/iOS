import UIKit

func stampa(value: String) {
    print(value)
}

func richiama() {
    stampa(value: "sono dentro la funzione richiama da dove richiamo la funzione stampa(value: String)")
}

richiama()
