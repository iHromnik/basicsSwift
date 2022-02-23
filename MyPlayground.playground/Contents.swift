import UIKit
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





