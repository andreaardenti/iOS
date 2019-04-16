import UIKit

class Animal {
    var name: String
    var Age: Int?
    var weight: Double?
    
    init (name: String) {
        self.name = name
    }
    
    func printMyData() {
        print("name: \(self.name)")
        if let myAge = self.Age {
            print("age: \(myAge)")
        }
        if let myWeight = self.weight {
            print("Weight: \(myWeight)")
        }
    }
    
    func animalCall() {
        print("Il verso dell'animale è...\n")
    }
}

class Dog: Animal {
    var pedigree: Bool = false
    
    func barks() {
        print("Wof Wof")
    }
    
    override func animalCall() {
        super.animalCall() //super mi permette di non cancellare il contenuto della funzione analoga nella classe padre
        print("WOF WOF")
    }
}

class Cat: Animal {
    var zampe: Int = 4
    
    func says() {
        print("Miaoooo")
    }
    
    func alive() {
        print("Yes is alive!")
    }
}

var animale1 = Animal.init(name: "Fido")
animale1.Age = 7
animale1.weight = 23

animale1.printMyData()

print("\n---DOG---")
var cane = Dog(name: "Levriero")
cane.printMyData()
cane.barks()
cane.animalCall()

print("\n---CAT---")
var gatto = Cat(name: "Pallino")
gatto.Age = 2
gatto.weight = 12
gatto.printMyData()
gatto.alive()
gatto.says()
