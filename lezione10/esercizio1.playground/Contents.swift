import UIKit

class User {
    var voto: String = ""
    
    init (voto: String) {
        self.voto = voto
    }
    
}

var andrea = User.init(voto: "Topolina")
print("Accesso (errato) diretto al voto: \(andrea.voto)")


class UserPrivate {
    private var voto: String = ""
    
    init (voto: String) {
        self.voto = voto
    }
    
    //get-only (seconda parte è get-set)
    var votoCorrente: String {
        get {
            return self.voto
        }
        set(nuovoVoto) {
            self.voto = nuovoVoto
        }
    }
}

var massimo = UserPrivate.init(voto: "Paperina")
print("Uso del GET: \(massimo.votoCorrente)")

massimo.votoCorrente = "Minnie"
print("Uso del SET: \(massimo.votoCorrente)")










