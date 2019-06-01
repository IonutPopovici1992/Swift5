import UIKit

/// Subclassing and Inheritance

class Person {
    var name = ""
}

class Employee: Person {
    var salary = 0
    var role = ""
    
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

var m = Manager()
m.name = "Maggie"
m.salary = 2000
m.role = "Manager of IT"
m.teamSize = 10
m.doWork()
print(m.salary)
m.firePeople()

var e = Employee()
