import UIKit
/*
var a: Double = 88
var myWeight: Double = 92.1
while myWeight >= a {
    myWeight -= myWeight / 100 * 0.15
    print(myWeight)
}
print("===============")
for _ in (1...7) {
    myWeight -= myWeight / 100 * 0.15
    print(myWeight)
}


 let array = ["apple", "peach", "onion"]

func fomatArray(_ array: [String], good: String, evil: String?) -> [String]{
    var newArray = array
    newArray.append(good)
    if let evil = evil {
        if let index = newArray.firstIndex(of: evil){
        newArray.remove(at: index)
        }
    }
return newArray
}

let goodArray = fomatArray(array, good: "strawbetry", evil: "onion")
print(goodArray)
let noGoodArray = fomatArray(array, good: "strawbetry", evil: nil)
print(noGoodArray)



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

var someArray = [Int]()
for index in (0...99) {
    someArray.append(index)
    }
for element in someArray {
    if element % 2 == 0 || element % 3 == 0 {
        someArray.remove(at: someArray.firstIndex(of: element)!)
    }
}
print(someArray)
print(someArray.count)
 



func fibonacci(n: Int) -> [Int] {
   // assert(n > 1)
    var array = [0, 1]
    while array.count < n {
        array.append(array[array.count - 1] + array[array.count - 2])
    }
    return array
}

print(fibonacci(n: 3))






var n = 30
var array = [Int]()
for num in 2...n {
    array.append(num)
}

// var p = array[0]

func bitCoin (_ array: [Int]) -> [Int] {
    var newArray = array
    var p = newArray[0]
    print(p)
    while p <= newArray.endIndex {
    for x in stride(from: 2 + p, to: n, by: p){
        
        if let index = newArray.firstIndex(of: x){
            newArray.remove(at: index)
            print(newArray)
            continue
        }
        
        if let index = array.first(where: {$0 > p}){
            p = index
            print(p)
            break
        }
    }
}
    return newArray
}


let a = bitCoin(array)
print(a)




 for x in stride(from: 2 + p, to: n, by: p){
    if let index = array.firstIndex(of: x){
        array.remove(at: index)
    }
}
print(array)
if let index = array.first(where: {$0 > p}){
    p = index
}
print(p) */

let n = 10000
var bitCoin = Set(2...n)
for velue in bitCoin {
    var index = 2
    while velue * index <= n {
        bitCoin.remove(velue*index)
        index += 1
    }
    index = 2
}
    
print(bitCoin.sorted(by: <))
print("+++++++")
print(bitCoin.count)
