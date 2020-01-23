import UIKit

/// Arrays

var str = "Hello, playground"

var a = "Dog"
var b = "Cat"
var c = "Bird"

var myArray: [String] = ["Dog", "Cat", "Bird"]

// myArray[0] = "My " + myArray[0]

// for counter in 0...2 {
//     myArray[counter] = "My " + myArray[counter]
//     print(myArray[counter])
// }

// for counter in 0...myArray.count - 1 {
//     myArray[counter] = "My " + myArray[counter]
//     print(myArray[counter])
// }

for item in myArray {
    print(item)
}

print("-----")

// An empty array
var emptyArray: [String] = []
var emptyArray2 = [String]()

// Add items
myArray.insert("Frog", at: 0)

for item in myArray {
    print(item)
}

print("-----")

myArray += ["Bear", "Lion"]

for item in myArray {
    print(item)
}

print("-----")

myArray.append("Raccoon")

for item in myArray {
    print(item)
}

print("-----")

// Remove items
myArray.remove(at: 0)

for item in myArray {
    print(item)
}

print("-----")

myArray.removeFirst()
myArray.removeLast()

for item in myArray {
    print(item)
}
