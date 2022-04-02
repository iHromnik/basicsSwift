import UIKit


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






    
    
    
  
