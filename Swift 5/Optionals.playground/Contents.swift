import UIKit

/// Optionals

// var a = nil
// var t = nil

// var a: Int? = nil
// var t: String? = nil

class XmasPresent {
    
    func surprise() -> Int {
        return Int.random(in: 1...10)
    }
}

// let present = XmasPresent()
// print(present.surprise())

// let present: XmasPresent? = XmasPresent()
// print(present?.surprise())

let present: XmasPresent? = XmasPresent()

// Check the optional to see if it contains an object
/*
if present == nil {
    // it contains nil
}
else {
    // it contains an object
}
*/

/*
if present != nil {
    // it contains an object
    // call the surprise function
    print(present!.surprise())
}
*/

/*
// Optional binding
if let actualPresent = present {
    print(actualPresent.surprise())
}
*/

/*
// Optional chaining
present?.surprise()
*/

// a can store a String or nil, but it is wrapped
var a: String?

// b can store a String or nil, but it is already unwrapped
var b: String!

var present1: XmasPresent? = nil
var present2: XmasPresent! = nil

// present1?.surprise()
present2.surprise()
