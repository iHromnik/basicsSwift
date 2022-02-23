import UIKit
// var a: Double = 88
//var myWeight: Double = 92.1
//while myWeight >= a {
//    myWeight -= myWeight / 100 * 0.15
//    print(myWeight)
//}
//print("===============")
//for _ in (1...7) {
//    myWeight -= myWeight / 100 * 0.15
//    print(myWeight)
//}
let array = ["apple", "peach", "onion"]

func fomatArray(
    _ array: [String],
    good: String,
    andRemoveEvil evil: String) -> [String]
{
    var newArray = array
    newArray.append(good)
    if let index = newArray.firstIndex(of: evil) {
        newArray.remove(at: index)
    }
return newArray
}

let goodArray = fomatArray(array, good: "Strawbetry", andRemoveEvil: "onion")




// var number: Int

//if number % 2 == 0 {
//    print("Yes")
//} else {print("No")}





func evenNumber (number num: Int) {
    if num % 2 == 0 {
        print("Yes")
        } else {print("No")}
}

func thirdNumber (number num: Int) {
    if num % 3 == 0 {
        print("Yes")
        } else {print("No")}
}

//thirdNumber(number: 9)
//evenNumber(number: 5)

var someArray = [Int]()
for x in (1...100) {
    someArray.append(x)
    }
print(someArray)

for value in someArray {
    if (value % 2) == 0 {
        someArray.remove(at: someArray.firstIndex(of: value)!)
    }
}
print(someArray)

for element in (0...10) {
    if element % 2 == 0 {
        someArray.remove(at: element)
    }
}
 print(someArray)
