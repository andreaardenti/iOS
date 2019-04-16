import UIKit

class User {
    
    //property della classe. ....sono le variabili
    var name: String
    var surname: String
    var sex: String?
    
    init(newName: String, newSurname: String) {
        name = newName
        surname = newSurname
    }
    
    func whoAmI () {
        if let sesso = sex {
            print ("Mi chiamo \(name) \(surname) il mio sesso è \(sesso)")
        } else {
            print ("Mi chiamo \(name) \(surname)")
        }
    }
    
    func aggiungiSesso(mySesso: String?) {
        guard let newSesso = mySesso else {
            print("ancora devi inserire il sesso")
            return
        }
    } //sex = newSesso
}

var andrea = User.init(newName: "andrea", newSurname: "ardenti")

print("Il nome richiesto è: \(andrea.name)")
print("Il cognome richiesto è: \(andrea.surname)")



class UserWithoutInit {
    
    //property della classe. ....sono le variabili
    var name: String?
    var surname: String?
    var sex: String?
    
}

var carmelo = UserWithoutInit.init()
print (carmelo)

carmelo.name = "carmelo"
print (carmelo.name)




