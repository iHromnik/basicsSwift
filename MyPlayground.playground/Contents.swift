import UIKit
/*

enum Trans {case auto, manual}
enum DoorState {case open, closw}
enum Trailer {case yas, no}
enum PoweUpgrade {case yas, no}
enum Marka {case Audi, Honda, BMW}
enum Window {case open, close}
enum Engine {case onEngine, offEngine}
enum carAction {
    case trailer(Trailer)
    case windiw(Window)
    case power(PoweUpgrade)
}

class Car {
    var transmission :Trans
    var window: Window
    var trailer: Trailer
    var power: PoweUpgrade
    init(trans: Trans, trail: Trailer, window: Window, power: PoweUpgrade) {
        self.power = power
        self.transmission = trans
        self.window = window
        self.trailer = trail
    }
    func action(action: carAction){
        switch action {
        case .windiw(let win):
           self.window = win
        case .trailer(let tra):
            self.trailer = tra
        case.power(let pow):
            self.power = pow
        }
    }
}



class TruncCar: Car {
    var wheit: Int
    init(transmission: Trans, trailer: Trailer, windows: Window, power: PoweUpgrade, massa: Int) {
        self.wheit = massa
        super.init(trans: transmission, trail: trailer, window: windows, power: power)
        print(trailer, transmission, window, power, wheit)
    }
    
    override func action(action: carAction) {
        super.action(action: action)
        print(trailer, transmission, window, power, wheit)
        

        
    }
}

class SportCar: Car {
    
    var maxSpeed: Int
    init(transmission: Trans, trailer: Trailer, windows: Window, power: PoweUpgrade, maxSpeed: Int) {
        self.maxSpeed = maxSpeed
        super.init(trans: transmission, trail: trailer, window: windows, power: power)
        print(trailer, transmission, window, power, maxSpeed)
  }
    override func action(action: carAction) {
        switch action {
        case .windiw(let win):
           self.window = win
        case .trailer:
            break
        case.power(let pow):
            self.power = pow
        }
        print(trailer, transmission, window, power, maxSpeed)
    }
    
    
    
}


var qwe = TruncCar(transmission: .auto, trailer: .no, windows: .close, power: .no, massa: 100)
qwe.action(action: .windiw(.open))
var qqq = SportCar(transmission: .auto, trailer: .no, windows: .open, power: .no, maxSpeed: 280)
qqq.action(action: .trailer(.yas))
qqq.action(action: .power(.yas))

=============
 
 
 
 
 
 
 
protocol Calkulate {
    func calkulatePerimiter() -> Double
}

class Rectangle: Calkulate {
    var sideA: Double
    var sideB: Double
    func calkulatePerimiter() -> Double {
        return (sideA + sideB) * 2
    }
    init(sideA: Double, sideB: Double) {
        self.sideA = sideA
        self.sideB = sideB
    }

}
class Circle: Calkulate {
    var radius: Double
    func calkulatePerimiter() -> Double {
        return 2 * radius * .pi
    }
    init(radiue:Double){
        self.radius = radiue
    }
}



var figures: [Calkulate] = [
Rectangle(sideA: 10, sideB: 12),
Circle(radiue: 180)
]

for figure in figures {
    let perimetr = figure.calkulatePerimiter()
    print(perimetr)
}
 
 
 ==========
 
 

class Hand {
    let redPen = RedPen()
    let bluePen = BluePen()
    let marker = Marker()
    let pero = Pero()
}

class RedPen {
    func writeText(_ text: String) {
        print("Pishem KRASNOJ pastoj \(text)")
    }
}

class BluePen {
    func writeText(_ text: String) {
        print("Pishen SINEJ pastoj \(text)")
    }
}
class Marker {
    func writeText(_ text: String) {
        print("Pishem MARKEROM")
    }
}

class Pero {
    func writeText(_ text: String) {
        print("Pishem PEROM")
    }
}

let hand = Hand()
hand.redPen.writeText("gggg")
 
 ============
 
 
 


protocol LetterBelonging {
    func writeText(_ text: String)
}


class Hand {
    var letterBelonging: LetterBelonging?
    func write(_ text: String) {
        letterBelonging?.writeText(text)
    }
//    init(letterBelonging: LetterBelonging){
//        self.letterBelonging = letterBelonging
//    }
}

class RedPen: LetterBelonging {
    func writeText(_ text: String) {
        print("pishem KRASNOJ RUCHKOJ \(text)")
    }
}

class BluePen: LetterBelonging {
    func writeText(_ text: String) {
        print("pishem SINEJ RUCHKOJ \(text)")
    }
}
class Pencil: LetterBelonging {
    func writeText(_ text: String) {
        print("pishem KARANDASH \(text)")
    }
}

class Marker: LetterBelonging {
    func writeText(_ text: String) {
        print("pishem MARKEROM \(text)")
    }
}

let q = Hand()
q.letterBelonging = Marker()
q.write("11")



//let hand = Hand(letterBelonging: Marker.init())
//hand.write("111")
//hand.letterBelonging.writeText("222")

==========




*/


enum Marka {
    case audi, bmw, ford
}

enum OpenClose {
    case open, close
}

enum StartStop {
    case start, stop
}

protocol Car {
    
    var marca: Marka { get }
   // var climatControl: Bool { get }
    var door: OpenClose? { get set }
    var window: OpenClose? { get set}
    var enging: StartStop? { get set}
    
    func actionDo(_ door: OpenClose?, _ window: OpenClose?, _ enging: StartStop?)
}

//extension Car {
//    mutating func openDoor(_ door: OpenClose?){
//        self.door = .open
//
//    }
//    mutating func openWindow(_ window: OpenClose?){
//        self.window = .open
//
//    }
//
//    mutating func startEnging(_ enging: StartStop?){
//        self.enging = .start
//    }
//}



class tunkCar: Car {
    var marca: Marka
    //var climatControl: Bool
    var door: OpenClose?
    var window: OpenClose?
    var enging: StartStop?
    
    
    func actionDo(_ door: OpenClose?, _ window: OpenClose?, _ enging: StartStop?){
    
    }
    
    init(marka: Marka) {
        self.marca = marka
       // self.climatControl = climat
        print(self.marca, self.door ?? .close, self.window ?? .close, self.enging ?? .stop)
    }
    
}
    
var q = tunkCar(marka: .audi)
q.actionDo(.open, .close, .start)

