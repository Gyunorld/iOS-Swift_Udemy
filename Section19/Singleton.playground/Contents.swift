import UIKit

// Singleton 적용 전
//class Car {
//    var color = "Red"
//}
//
//let myCar = Car()
//myCar.color = "Blue"
//
//let yourCar = Car()
//print(yourCar.color)

// Singleton 적용 후
class Car {
    var color = "Red"
    
    nonisolated(unsafe) static let singletonCar = Car()
}

let myCar = Car.singletonCar
myCar.color = "Blue"

let yourCar = Car.singletonCar
print(yourCar.color)

class A {
    init () {
        Car.singletonCar.color = "Brown"
    }
}

class B {
    init () {
       print(Car.singletonCar.color)
    }
}
