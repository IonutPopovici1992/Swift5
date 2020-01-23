import UIKit

/// Dictionaries

var str = "Hello, playground"

// Declaring an empty String: String dictionary
var myDictionary = [String: String]()

print(myDictionary)


print()

// Assigning data into a dictionary
myDictionary["UVW 123"] = "Red Ferrari"
myDictionary["XYZ 456"] = "Silver Porsche"

print(myDictionary)

print()

// Retrieving a value as optional string
let myCar = myDictionary["UVW 123"]

print(myCar)

print()

// Replacing the value for a key
myDictionary["XYZ 456"] = "Black Lambo"

print(myDictionary)

print()

// Remove a value for a key
// myDictionary["XYZ 456"] = nil

// Loop through the items of a dictionary
for (key, value) in myDictionary {
    // Do stuff for each item of the dictionary
    print("\(key) is a \(value)")
}
