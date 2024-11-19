import Foundation

var pizzaInches: Int = 10 {
    // observed properties
    willSet {
        print(pizzaInches)
        print(newValue)
    }
    didSet {
        if pizzaInches >= 18 {
            print("Invalid size specified, pizzaInches set to 18.")
            pizzaInches = 18
        }
    }
}

pizzaInches = 33
print(pizzaInches)

var numberOfPeople: Int = 12
let slicesPerPerson: Int = 4

// Getter
var numberOfslices: Int {
    // get을 쓰는 것은 명시적으로 사용하는 것임
    get {
        return pizzaInches - 4
    }
    // setter
    set {
        print("numberOfSlices now has a new value which is \(newValue)")
    }
}

//print(numberOfslices)

numberOfslices = 12

var numberOfPizza: Int {
    get {
        let numberOfPeopleFedPerPizza = numberOfslices / slicesPerPerson
        return numberOfPeople / numberOfPeopleFedPerPizza
    }
    set {
        let totalSlices = numberOfslices * newValue
        numberOfPeople = totalSlices / slicesPerPerson
    }
}

numberOfPizza = 4

print(numberOfPizza)
