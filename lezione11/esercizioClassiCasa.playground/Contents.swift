/*
 Un sito web di notizie online ti ha richiesto la creazione di un’applicazione per
 la visualizzazione nativa dei suoi articoli e feed delle notizie.
 • Tutte le notizie hanno un
 - titolo,
 - testo,
 - data di pubblicazione;
 - autore.
 
 • L’Autore è definito a partire da un nome, cognome e da un indirizzo
 web. Le notizie oltre ad essere di tipo testuale possono essere di tipo Video.
 Queste si differenziano perché posseggono un url del video e la durata del
 video (oltre alle proprietà classiche).
 Quello che devi creare è la struttura delle classi del progetto ed una sorta di
 gestore delle notizie.
 Il gestore delle notizie è in grado di:
 • Aggiungere un nuovo articolo o video ad una collezione.                          -DONE
 • Restituire la lista di articoli o video dato il nome di un autore.
 • Calcolare il numero di video e articoli presenti.                                -DONE
 • Restituire l’ultimo articolo o video pubblicato (cioè inserito nel gestore).     -DONE
 */

import UIKit

class Manager {
    
}


class Author {
    var nome: String
    var cognome: String
    var web: String
    
    init(nome: String, cognome: String, web: String) {
        self.nome = nome
        self.cognome = cognome
        self.web = web
    }
    
    func stampa() {
        print("Nome: \(self.nome), Cognome: \(self.cognome), Web: \(self.web)")
    }
    
}

class News {
    var titolo: String
    var testo: String
    var dataPubblicazione: String
    var autore: Author
    
    init(titolo: String, testo: String, dataPubblicazione: String, autore: Author) {
        self.titolo = titolo
        self.testo = testo
        self.dataPubblicazione = dataPubblicazione
        self.autore = autore
    }
    
    func printNews() {
        print("Titolo: \(self.titolo)\nTesto: \(self.testo)\ndataPubblicazione: \(self.dataPubblicazione)\nAutore: \(self.autore.nome) \(self.autore.cognome) \(self.autore.web)")
    }
    
    func listBy(articolo: [News], author: Author) {
        for item in articolo {
            print(item)
        }
    }
    
    func howMany(articolo: [News]) {
        print("In totale ci sono \(articolo.count) articoli")
    }
    
//    func showLast(articolo: [News]) {
//        var arr: [News] = []
//        if let art = self.articolo.last {
//            arr.append(art)
//        }
//        self.
//    }
    
}

class VideoNews: News {
    var url: String?
    var durata: Int?
    
    
}


var articoli: [News] = []

var articolo1 = News.init(titolo: "Catania, città del futuro", testo: "Ci siete cascati! Altro che città del futuro", dataPubblicazione: "23012019", autore: Author.init(nome: "Andrea", cognome: "Ardenti", web: "www.fessochicicrede.com"))
var articolo2 = News.init(titolo: "Palermo, la nuova Montreal", testo: "Ci siete cascati! Altro che città del futuro", dataPubblicazione: "23012019", autore: Author.init(nome: "Andrea", cognome: "Ardenti", web: "www.fessochicicrede.com"))
var articolo3 = News.init(titolo: "New York, sgominata banda di falsari", testo: "Ci siete cascati! Altro che città del futuro", dataPubblicazione: "23012019", autore: Author.init(nome: "Carmelo", cognome: "Ardenti", web: "www.fessochicicrede.com"))
var articolo4 = News.init(titolo: "Sydney, eccoci arrivati!", testo: "Ci siete cascati! Altro che città del futuro", dataPubblicazione: "23012019", autore: Author.init(nome: "Giuseppe", cognome: "Ardenti", web: "www.fessochicicrede.com"))

articoli.append(articolo1)
articoli.append(articolo2)
articoli.append(articolo3)
articoli.append(articolo4)



articolo1.printNews()
//articolo1.listBy(articolo: articolo, author: "Andrea")
articolo1.howMany(articolo: articoli)
//articolo1.showLast(articolo: articoli)
