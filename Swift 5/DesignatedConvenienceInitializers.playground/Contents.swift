import UIKit

/// Designated and Convenience initializers

var str = "Hello, playground"

class Person {

    var name: String
    var netWorth: Int?
    var gender: String!
    
    // Designated initializer because it makes sure that all properties are initialized
    init() {
        name = "None"
    }
    
    convenience init(_ gender: String, _ netWorth: Int) {
        // Call the designated initializer to ensure that the object is ready to go
        self.init()
        
        // Set any other properties or custom code to initialize for this scenario
        self.gender = gender
        self.netWorth = netWorth
    }

}

// Creating a new person object
let a = Person()
print(a.name)
print(a.netWorth)
print(a.gender)

// Creating a new rich person object
let b = Person("Male", 123456789)
let c = Person("Female", 123456789)
