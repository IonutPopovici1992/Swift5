import UIKit

/// IF Statements
// if condition {
// }
// else if condition {
// }
// else {
// }

var str = "Hello, playground"

let a = 25
let b = 10
let c = 1

if (a <= 10 || b > 5) || c != 1 {
    print("Branch 1")
}
else if a < 15 {
    print("Branch 2")
}
else if a > 30 {
    print("Branch 3")
}
else {
    print("Catch all!")
}
