import UIKit


class Animal {
    var nome: String
    
    init(nome: String) {
        self.nome = nome
    }
}


class Dog: Animal {
    var legs: String
    
    init(nome: String, legs: String) {
        self.legs = legs
        super.init(nome: nome)
    }
}

class Cat: Animal {
    var legs: String
    
    init(nome: String, legs: String) {
        self.legs = legs
        super.init(nome: nome)
    }
}


var farm = [Dog.init(nome: "Fido", legs: "boh"), Cat.init(nome: "Pallino", legs: "forse")]
var newdog = farm[0]

print(newdog.nome)
