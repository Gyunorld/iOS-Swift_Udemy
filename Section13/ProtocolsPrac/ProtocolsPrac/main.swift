protocol CanFly {
    func fly()
}


class Bird {
    
    var isFemale = true
    
    func layEgg() {
        if isFemale {
            print("새가 둥지에 알을 낳았어요")
        }
    }
}

class Eagle: Bird, CanFly {
    func fly() {
        print("독수리가 날아다닙니다")
    }
    
    func soar() {
        print("독수리 전용 활공 중...")
    }
}

class Penguin: Bird {
    func swim() {
        print("펭귄이니깐 난 수영만 할 수 있어!")
    }
}

struct FlyingMuseum {
    func flyingDemo(flyingObject: CanFly) {
        flyingObject.fly()
    }
}

struct Airplane: CanFly {
    func fly() {
        print("비행기가 이륙합니다!!")
    }
}

let myEagle = Eagle()
let myPenguin = Penguin()
let myPlane = Airplane()
myEagle.fly()
myPlane.fly()

let museum = FlyingMuseum()
museum.flyingDemo(flyingObject: myPlane) // myPenguin은 오류발생
