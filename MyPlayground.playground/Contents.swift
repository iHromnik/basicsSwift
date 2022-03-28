import UIKit
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

