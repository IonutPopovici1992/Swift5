import UIKit

/// Properties

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
    
    var bonus: Int {
        // This is a computed property
        // When it's accessed, the code in here will run
        // Then we'll return the value
        return teamSize * 1000
    }
    
    init(_ name: String, _ team: Int) {
        // This calls the init of the Employee class
        super.init(name)
        
        // Additional init work
        teamSize = team
    }
    
    override func doWork() {
        super.doWork()
        
        print("I'm managing people.")
        salary += 500
    }
    
    func firePeople() {
        print("I'm firing people.")
    }
}

let m = Manager("Kate", 15)
print(m.bonus)
