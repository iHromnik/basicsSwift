import UIKit
/*
protocol Weightabe {
    var weight: Double { get set }
}

class Cirkle: Weightabe {
    var weight: Double
    var radius: Double
    func calkulatePerimrtr() -> Double {
        return 2 * .pi * radius
    }
    init(radius: Double, weight: Double) {
        self.radius = radius
        self.weight = weight
    }
}

class Rectangle: Weightabe {
    var weight: Double
    var sideA: Double
    var sideB: Double
    func calkulatePerimrtr() -> Double {
        return 2 * sideA + 2 * sideB
    }
    init(sideA: Double, sideB: Double, weight: Double) {
        self.sideA = sideA
        self.sideB = sideB
        self.weight = weight
    }
}

//struct Stack {
//    privat var elements: [Rectangle] = []
//    mutating func push (_ element: Rectangle) {
//        elements.append(element)
//    }
//    mutating func pop () -> Rectangle? {
//        return elements.removeLast()
//    }
//}
//
//var stsck = Stack()

struct Stack <T: Weightabe> {
    private var elements: [T] = []
    mutating func push (_ element: T) {
            elements.append(element)
        }
        mutating func pop () -> T? {
            return elements.removeLast()
        }
    var totalWeight: Double {
        var weight = 0.0
        for element in elements {
            weight += element.weight
        }
        return weight
    }
    
    subscript(indicase: UInt ...) -> Double {
        var weight = 0.0
        for index in indicase where index < self.elements.count {
            weight += self.elements[Int(index)].weight
        }
        return weight
    }
}

var q = Stack<Cirkle>()
q.push(Cirkle(radius: 2, weight: 10))

*/


let even: (Int) -> Bool = {
       (eleme: Int) -> Bool in
        return eleme % 2 == 0
    }

let odd: (Int) -> Bool = {
       (eleme: Int) -> Bool in
        return eleme % 2 != 0
    }

var array = [1,2,3,4,5,6,7,8,9,10]

func filter(arrayy: [Int], predicate: (Int) -> Bool) -> [Int] {
    var tempArray = [Int]()
    for element in arrayy {
        if predicate(element) {
            tempArray.append(element)
        }
    }
    return tempArray
}

filter(arrayy: array, predicate: {(element: Int) -> Bool in
    return element % 2 == 0
})

filter(arrayy: array) { (element: Int) -> Bool in
    return element % 2 == 0
}

