import UIKit
enum HondDoorState {case open, close}
enum Transmissio {case manual, auto}

struct Honda {
    let transmission: Transmissio
    var km: Double
    var diirState: HondDoorState
}
var car1 = Honda.init(transmission: .auto, km: 0.0, diirState: .close)
var car2 = Honda.init(transmission: .auto, km: 120, diirState: .close)
print(car1.km, car2.km)
car1 = car2
print(car1.km, car2.km)
car1.km = 500
print(car1.km, car2.km)

