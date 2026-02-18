/*
/// If let basique

var prenom: String? = "Alex"

if let prenom {
    print(prenom)
} else {
    print("There is no name")
}

/// If let basique

var age: Int? = nil

if let age {
    print(age)
} else {
    print("There is no age")
}

/// Guard let (pour les fonctions)

func afficherVille(ville: String?) -> String? {
    guard let ville else {
        return "Ville manquante"
    }
    /// print("Ville : \(ville)")
    return "Ville : \(ville)"
}

func doubler(nombre: Int?) -> Int? {
    guard let nombre else {
        return nil
    }
    nombre*2
}

/// Nil Coalescing ?? (valeur par default)

var pays: String? = nil
let paysFinal = pays ?? "France"
print("Pays sélectionné : \(paysFinal)")

var note: Double? = nil 
let moyenne = note ?? 0

///Optional chaining
struct Adresse {
    var ville: String?
}

struct Utilisateur {
    var adresse: Adresse?
}
var user = Utilisateur(adresse: Adresse(ville: "Paris"))
/* if let ville = user.Adresse?.ville?{
    print(ville)
} */
if let ville = user.adresse?.ville{
    print(ville)
}

var user1 = Utilisateur(adresse: nil)
if let ville = user1.adresse?.ville ?? "Ville inconnue"
print(ville)

///Force unwrap
var score: Int? = 42
print(score!)*/

/// EXERCICE PRATIQUER UNWRAP

// var pseudo: String? = "SwiftMaster"
// if let pseudo {
//     print("Bienvenu \(pseudo)")
// } else {
//     print("Pseudo manquant")
// }

// var score: Int? = nil
// let finalScore = score ?? 0
// pritn("Score : \(finalScore)")

// var email: String? = "user@mail.com"
// let result = email.map { "Email valide : \($0)" } ?? "Email absent"
// print(result)

// var userAge: Int? = 17
// var result : String?
// if let userAge{
//     if userAge < 18 {
//         result = "Utilisateur mineur : \(userAge) ans"
//     }   else {
//         resutl = "Utilisateur majeur : \(userAge) ans"
//     }   
// }
// print(result ?? "Age inconnu")



// struct Adresse {
//     var ville: String?
//     var codePostal: String?
// }

// struct Utilisateur {
//     var nom: String?
//     var age: Int?
//     var adresse: Adresse?
// }

// var user: Utilisateur? = Utilisateur(
//     nom: "Alice",
//     age: 25,
//     adresse: Adresse(ville: "Paris", codePostal: nil)
// )

// let nom = user?.nom ?? "Inconnu"
// let age = user?.age.map {String($0)} ?? "Inconnu"
// let ville = user?.adresse?.ville ?? "Inconnue"
// let result = "Nom : \(nom), Age : \(age), Ville : \(ville)"
// print(result)


// struct Adresse {
//     var ville: String?
//     var codePostal: String?
// }

// struct Utilisateur {
//     var nom: String?
//     var age: Int?
//     var adresse: Adresse?
//     var email: String?
// }

// var user: Utilisateur? = Utilisateur(
//     nom: nil,
//     age: 17,
//     adresse: Adresse(ville: nil, codePostal: "75001"),
//     email: "alice@mail.com"
// )

// let nom = user?.nom ?? "Inconnu"
// let age = user?.age.map {$0 > 18 ? "Majeur" : "Mineur"} ?? "Inconnue"
// let ville = user?.adresse?.ville ?? "Inconnue"
// let email = user?.email ?? "Inconnue"

// let result = "Nom : \(nom), Age : \(age), Ville : \(ville), Email : \(email)"
// print(result)

// let prixProduits : [String:Double] = ["iPhone": 999.0, "AirPods": 199.0]

// func afficherPrix(produit : String) -> String{
//     if let prix = prixProduits[produit]{
//         return "Le produit \(produit) coûte \(prix)€"
//     } else {
//         return "Produit non trouvé"
//     }
// }
