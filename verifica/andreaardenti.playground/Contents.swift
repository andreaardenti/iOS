import UIKit
//creare la funzione che calcoli la media delle età delle ragazze o dei soli ragazzi


var teamDict: [String : (sesso: String, età: Int)] = [
    "Michele": (sesso: "M", età: 28),
    "Sabrina": (sesso: "F", età: 29),
    "Ludovica": (sesso: "F", età: 30),
    "Alessio": (sesso: "M", età: 32),
    "Massimo": (sesso: "M", età: 58),
]

func averageAge() -> (averageM: Int, averageF: Int) {
    var averageM = 0
    var averageF = 0
    var counterM = 0
    var counterF = 0
    
    for (_, team) in teamDict {
        if (team.sesso == "M") {
            counterM += 1
            averageM += team.età
        } else if (team.sesso == "F") {
            counterF += 1
            averageF += team.età
        }
    }
    return (averageM/counterM, averageF/counterF)
}

print (averageAge())













