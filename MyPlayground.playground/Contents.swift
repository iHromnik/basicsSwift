import UIKit
/*
var weight: Double = 95
var desiredWeight: Double = 80
let percent = 0.15 // 0,07...0,15
var days: Int = 0
while weight > desiredWeight {
    weight = weight * (1 - percent / 100)
    days += 1
    print(days, weight)
}

var dnej: Int = 10
for _ in 0...dnej {
 weight = weight * (1 - percent / 100)
    print(weight)
}
*/


func loosWeight (myWeight weight: Double, desiredWeight: Double, days: Int, percent: Double) {
    var m = weight
   // let nm = desiredWeight
    var day: Int = 0
    let d = days
    
        for _ in 1...d {
         m = m * (1 - percent / 100)
        }
    var mn = weight
        while mn > desiredWeight {
        mn = mn * (1 - percent / 100)
        day += 1
        }
            
    print("Do celi \(desiredWeight) kg ostalos \(day) dnej")
    print("Za \(days) dnej pohydeesh do \(m) kg")
}
    
loosWeight(myWeight: 94, desiredWeight: 80, days: 51, percent: 0.15)


    

