import UIKit
var a = 100
var myWeight = 92.1
for _ in (1...a) {
    myWeight -= myWeight / 100 * 0.15
    print(myWeight)
}
