import Foundation

class Animal {
    var name: String
    
    init(n: String) {
        name = n
    }
}

class Human: Animal {
    func code() {
        print("Typing away...")
    }
}

class Fish: Animal {
    func swim() {
        print("Swimming...")
    }
}

let arnorld = Human(n: "Arnold")
let salah = Human(n: "Salah")
let nemo = Fish(n: "Nemo")

let neighbours = [arnorld, salah, nemo]

let neighbour1 = neighbours[0]

let myDouble = 0.0
let myDoubleAsAnInt = Int(myDouble)

//if neighbours[2] is Human {
//    print("Neighbour 1 is a human")
//}

func findNemo(from animals: [Animal]) {
    for animal in animals {
        if animal is Fish {
            print(animal.name)
            let fish = animal as! Fish
            fish.swim()
            let animalFish = fish as Animal // Upcasting
        }
    }
}

findNemo(from: neighbours)

if let fish = neighbours[1] as? Fish {
    fish.swim()
} else {
    print("fail")
}
