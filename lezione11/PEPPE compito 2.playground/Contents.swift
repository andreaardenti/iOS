import UIKit

class Author {
    
    var name: String
    var surname: String
    var webSite: String?
    
    init(name: String, surname: String) {
        self.name = name
        self.surname = surname
    }
}

class News {
    var title: String
    var text: String
    var date: String
    var author: Author
    
    init(title: String, text: String, date: String, author: Author) {
        self.title = title
        self.text = text
        self.date = date
        self.author = author
    }

    func printElement() {
        if let myWebSite = self.author.webSite {
            print("Titolo: \(self.title) \nTesto: \(self.text) \nData: \(self.date) \nAutore: \(self.author.name) \(self.author.surname) \nSito: \(myWebSite)\n")
        }
        else{
            print("Titolo: \(self.title) \nTesto: \(self.text) \nData: \(self.date) \nAutore: \(self.author.name) \(self.author.surname)\n")
        }
    }
}

class Video: News {
    var url: String
    var timeOfVideo: String
    
    init(title: String, text: String, date: String, author: Author, url: String, timeOfVideo: String) {
        self.url = url
        self.timeOfVideo = timeOfVideo
        super.init(title: title, text: text, date: date, author: author)
    }
    
    override func printElement() {
        if let myWebSite = self.author.webSite {
            print("Titolo: \(self.title) \nTesto: \(self.text) \nData: \(self.date) \nAutore: \(self.author.name) \(self.author.surname) \nlink Video: \(self.url) \nDurata:\(self.timeOfVideo) \nSito: \(myWebSite)\n")
        } else {
            print("Titolo: \(self.title) \nTesto: \(self.text) \nData: \(self.date) \nAutore: \(self.author.name) \(self.author.surname) \nlink Video: \(self.url) \nDurata: \(self.timeOfVideo) \n")
        }
    }
}

class Manager {
    var newspaper: [News] = []
    
    init() {}
    
    func arrayToString(array: [News]) {
        for(_, value) in array.enumerated() {
            if value is Video {
                print("Video:")
                value.printElement()
            }
            else {
                print("Articolo:")
                value.printElement()
            }
        }
    }
    
    func addNew(element: News) {
        self.newspaper.append(element)
    }
    
    func returnBy(name: String) {
        var array: [News] = []
        for(_, value) in self.newspaper.enumerated() {
            if value.author.name == name {
                array.append(value)
            }
        }
        self.arrayToString(array: array)
    }
    
    func countOfElement() -> (Int, Int) {
        var articles: [News] = []
        var videos: [News] = []
        for(_, value) in self.newspaper.enumerated() {
            if value is Video {
                videos.append(value)
            } else {
                articles.append(value)
            }
        }
        return (articles.count, videos.count)
    }
    
    func lastElement() {
        var array: [News] = []
        if let myNewspaper = self.newspaper.last {
            array.append(myNewspaper)
        }
        self.arrayToString(array: array)
    }
}

//definisco gli utenti
var author1 = Author.init(name: "Giuseppe", surname: "Marchese")
author1.webSite = "https://www.miosito.com"
var author2 = Author.init(name: "Pippo", surname: "Franco")


//definisco articoli e video
var article1 = News.init(title: "Berlusconi ancora vivo", text: "perche non lo ammazzano?", date: "05.03.2019", author: author1)
var article2 = News.init(title: "Bersani ancora vivo", text: "perche non lo ammazzano?", date: "05.03.2019", author: author2)
var article3 = News.init(title: "Renzi ancora vivo", text: "perche non lo ammazzano?", date: "05.03.2019", author: author1)
var article4 = News.init(title: "Salvini ancora vivo", text: "perche non lo ammazzano?", date: "05.03.2019", author: author2)
var article5 = News.init(title: "Di Maio ancora vivo", text: "perche non lo ammazzano?", date: "05.03.2019", author: author1)
var video1 = Video.init(title: "Video shock", text: "Apple guadagna più soldi di quanti ne abbia già", date: "05.03.2019", author: author1, url: "https://www.youtube.com/miovideo", timeOfVideo: "10 minuti")
var video2 = Video.init(title: "Video a caso", text: "nuovo iphone che si piega!!!", date: "05.03.2019", author: author2, url: "https://www.youtube.com/miovideo", timeOfVideo: "2 minuti")

//definisco il manager
var manager = Manager.init()

//aggiungo gli articoli e i video
manager.addNew(element: article1)
manager.addNew(element: article2)
manager.addNew(element: article3)
manager.addNew(element: article4)
manager.addNew(element: article5)
manager.addNew(element: video1)
manager.addNew(element: video2)

//restituisco la lista tramite nome di articoli e/o video
manager.returnBy(name: "Giuseppe")
manager.returnBy(name: "Pippo")

//restituisco il numero di elementi presenti nell'array
print("Articoli: \(manager.countOfElement().0)\nVideo: \(manager.countOfElement().1)\n")

//restituisco l'ultimo elemento dell'array
manager.lastElement()



class Manager {
    var hotel: [Room]
    init(hotel:[Room]) {
        self.hotel = hotel
    }
    
    func allRooms() {
        var finalString: String = ""
        for item in self.hotel {
            if item is Single {
                let myItem  = item as! Single
                if let myCucinino = myItem.optCucinino {
                    finalString = myItem.printElement()+"\nMaxPersone: \(String(myItem.maxPerson))"+"Cucinino: \(myItem.stringToBool(item: myCucinino))"
                    print(finalString)
                } else {
                    finalString = item.printElement() + "\nMaxPersone: \(String(myItem.maxPerson))"
                    print(finalString)
                }
            } else if item is Double {
                let myItem = item as! Double
                
                if let myLettino = myItem.optLettino {
                    finalString = myItem.printElement()
                        
                        + "\nMaxPersone: \(String(myItem.maxPerson))"
                        
                        + "Lettino: \(myItem.stringToBool(item: myLettino))"
                    print(finalString)
                } else {
                    finalString = item.printElement() + "\nMaxPersone: \(String(myItem.maxPerson))"
                    print(finalString)
                }
            }
        }
    }
}






    

