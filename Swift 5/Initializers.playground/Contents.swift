import UIKit

/// Initializers

class Person {
    var name = ""
    
    init() {
        // custom init code
        name = "Joel"
    }
    
    init(_ name: String) {
        self.name = name
    }
}

class Employee: Person {
    var salary = 0
    var role = ""
    
    override init(_ name: String) {
        // This is calling the init(_ name: String) function of the Person class
        super.init(name)
        
        // Additional init code
        self.role = "Analyst"
    }
    
    func doWork() {
        print("Hi, my name is \(name) and I'm doing work.")
        salary += 250
    }
}

class Manager: Employee {
    var teamSize = 0
    
    override func doWork() {
        super.doWork()
        
        print("I'm managing people.")
        salary += 500
    }
    
    func firePeople() {
        print("I'm firing people.")
    }
}

let person = Person()
print(person.name)

let person2 = Person("Tom")
print(person2.name)

print()

// let employee = Employee()
// print(employee.name)

let employee2 = Employee("Tom")
print(employee2.name)
print(employee2.role)
