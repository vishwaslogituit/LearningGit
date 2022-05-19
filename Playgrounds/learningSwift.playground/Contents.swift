import UIKit



let yuyuyu:[Int] = [2,4,5,6,7]
let longstring = yuyuyu.reduce(""){(a,b) -> String in
    return a + String(b)
}
print(longstring)

