import UIKit

/// Switch Statements
//switch value to consider {
//    case value:
//    case value:
//    default:
//}

var str = "Hello, playground"

let character = "c"

switch character {
    case "a":
        print("This is an a.")
    case "b", "c":
        print("This is a b or c.")
    default:
        print("This is the fallback.")
}
