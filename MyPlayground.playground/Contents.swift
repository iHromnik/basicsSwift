import UIKit
<<<<<<< HEAD
/*enum HondDoorState {case open, close}
enum Transmissio {case manual, auto}

class Honda {
    let transmission: Transmissio
    var km: Int
    var diirState: HondDoorState
    static var carCouunt = 0
    init(transmission: Transmissio, km: Int, doorState: HondDoorState) {
        self.transmission = transmission
        self.km = km
        self.diirState = doorState
        Honda.carCouunt += 1
    }
    static func countInfo() {
        print("Make \(self.carCouunt) cars")
    }
}
var car1 = Honda(transmission: .auto, km: 0, doorState: .close)
var car2 = Honda(transmission: .manual, km: 120, doorState: .close)
print(car1.km, car2.km)
car1 = car2
print(car1.km, car2.km)
car1.km = 500
print(car1.km, car2.km)
Honda.countInfo()
*/

enum Trans {
    case auto, manual
}

enum DoorState {
    case open, closw
}

enum Trailer {
    case yas, no
}

enum PoweUpgrade {
    case yas, no
}

class Car {
    var collor: UIColor
    var age: Int
    var mp3: Bool
    var transmission :Trans
    var km: Int
    var door: DoorState
    init(col: UIColor, year: Int, mp4: Bool, trans: Trans, km: Int, door: DoorState) {
        self.age = year
        self.collor = col
        self.door = door
        self.km = km
        self.transmission = trans
        self.mp3 = mp4
    }
}

class SportCar: Car {
    var up: PoweUpgrade
    var maxSpeed: Int
    init(col: UIColor, year: Int, mp4: Bool, trans: Trans, km: Int, door: DoorState, speed: Int, upgrate: PoweUpgrade) {
        self.maxSpeed = speed
        self.up = upgrate
        super.init(col: col, year: year, mp4: mp4, trans: trans, km: km, door: door)
    }
    
    func upgrate() {
        PoweUpgrade.yas
    }
}

var car1 = Car(col: .blue, year: 2000, mp4: true, trans: .auto, km: 100, door: .closw)
var sporcar = SportCar(col: .white, year: 2020, mp4: true, trans: .auto, km: 30, door: .closw, speed: 220, upgrate: .no)
sporcar.upgrate()
print(">>> \(sporcar.upgrate()) ")
//class Animal {
//    let heard: Int
//    let eyes: Int
//    var median: Int
//   // var blood: Double
//
//
//    init(heard: Int, eyes: Int, median: Int) {
//
//
//        self.eyes = eyes
//        self.heard = heard
//        self.median = median
//    }
//
//    func die(){
//        print("ymri")
//    }
//}
//
//class Mamaal: Animal {
//    var hasFur: Bool = true
//    var isCute: Bool = true
//    init(heard: Int, eyes: Int, median: Int, hasFur: Bool, isCute: Bool) {
//        self.hasFur = hasFur
//        self.isCute = isCute
//        super.init(heard: heard, eyes: eyes, median: median)
//    }
//
//    func drinkMilk() {}
//}
//enum DogType {
//    case one, two
//}
//class Dog: Mamaal{
//    var type: DogType
//    init(type: DogType) {
//        self.type = type
//        super.init(heard: 150, eyes: 2, median: 1, hasFur: true, isCute: true)
//    }
//    func swim(){}
//
//}

//class B {
//   weak var a: A?
//    deinit {
//        print("del B")
//    }
//}
//
//class A {
//    var b: B?
//    deinit{
//        print("del A")
//    }
//}
//var a: A? = A()
//var b: B? = B()
//
//a?.b = b
//b?.a = a
//
//a = nil
//b = nil
=======













































































































enum Marka {
    case Audi, Honda, BMW
}

enum Window {
    case open, close
}

enum Engine {
case onEngine, offEngine
}

enum carAction {
    case engine(Engine)
    case windiw(Window)
    case trunc(Int)
}
struct SportCar {
    let marka: Marka
    let maxTrunk: Int = 100
    var window: Window = .close
    var enging: Engine = .offEngine
    var truncVolue: Int = 0
    
    
    mutating func action(act: carAction) {
        
        switch act {
        case .windiw(let win):
           self.window = win
        case .trunc(let tru):
            self.truncVolue = truncVolue + tru
        case.engine(let eng):
            self.enging = eng
        }
        pri()
    }
    func pri(){
        print(self.enging, self.truncVolue, self.window, self.marka, self.maxTrunk)
    }
}

var car = SportCar.init(marka: .Audi)
car.pri()
car.action(act: .trunc(10))
car.action(act: .windiw(.open))
car.action(act: .engine(.onEngine))

/*
enum EnginState{
    case on, off
}
enum CarAction {
case load(Int)
case setEnginState(EnginState)
case ugradePower(Int)
}

struct Car {
    var isEnginOn: EnginState = .off
    var horsPower: Int
    var trukLoad: Int = 0
    var maxLoad: Int
    
    mutating func makeAction (action: CarAction){
        
        self.desctribeSelf()
    }
   func desctribeSelf(){
            print(self.horsPower, self.isEnginOn, self.trukLoad)
        }
}

var car = Car(horsPower: 150, maxLoad: 100)
car.makeAction(action: .load(10))
*/

>>>>>>> lesson-3
