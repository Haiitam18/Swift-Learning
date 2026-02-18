struct user{
    var name : String?
    var age : Int?
    var height : Int?
    var outfit : outfit?
}

struct outfit{
    var tShirt : Bool?
    var shoes : Bool?
    var jeans : Bool?
    var hat : Bool?
}

var haitam : user? = user(
    name : "haitam",
    age : 24,
    height : 183,
    outfit : outfit(
        tShirt : false,
        shoes : true,
        jeans : true,
        hat : false
    )
)

func getUserInfo(nom user : user?) -> String{
    guard let user = user else {
        return "User is nil"
    }

    let name = user.name ?? "No Name"
    let age = user.age.map {String($0)} ?? "No Age"
    let height = user.height.map {String($0)} ?? "No height"

    guard let outfit = user.outfit else {
        return "My name is \(name), I'm \(age) and my height is \(height)cm. No outfit info."
    }

    let tShirt = (outfit.tShirt ?? false) ? "wear a t-Shirt" : "don't wear a t-Shirt"
    let shoes = (outfit.shoes ?? false) ? "I've new shoes on" : "I'm bear foot"
    let jeans = (outfit.jeans ?? false) ? "wear a jeans" : "don't wear a jeans"
    let hat = (outfit.hat ?? false) ? "and have a hat." : "."

    let result = "My name is \(name), i'm \(age) and my height is \(height)cm. Today I \(tShirt), \(shoes), I also \(jeans)\(hat)"

    return result
}

print(getUserInfo(nom : haitam))