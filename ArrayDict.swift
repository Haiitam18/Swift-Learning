/// Manipulation des array
var student : [String] = ["Léo", "Sarah", "Marc", "Anis", "Eva"]
student.append("Haitam")
student.remove(at:1)
let numStudent = student.count
print(student)

///Manipulation des Dict
var notes : [String:Int] = ["Léo":15,"Sarah": 18]
notes["Haitam"] = 20
notes["Léo"] = 17

for (nom,note) in notes{
    print("L'élève \(nom) a \(note)/20")
}