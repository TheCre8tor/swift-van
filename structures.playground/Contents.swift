import Foundation

struct Person {
    let firstName: String
    let lastName: String
    let fullName: String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
        fullName = "\(firstName) \(lastName)"
    }
}

struct Person2 {
    let firstName: String
    let lastName: String
    
    // computed property
    
    var fullName: String {
        "\(firstName) \(lastName)"
    }
    
    struct Human {
        
    }
}

let person = Person2(firstName: "Alexander", lastName: "Nitiola")
person.fullName

Person2.Human()

// structures are immutable by default,
// to create a mutable structure, do this:

struct Car {
    var currentSpeed: Int
    
    mutating func drive(speed: Int) {
        "Driving..."
        currentSpeed = speed
    }
}

var car = Car(currentSpeed: 20)
car.currentSpeed

car.drive(speed: 40)
car.currentSpeed

// note: structures in swift cannot sub-class another structure

struct Bike {
    let manufacturer: String
    let currentSpeed: Int
    
    func copyWith(
        manufacturer: String? = Optional.none,
        currentSpeed: Int? = Optional.none
    ) -> Bike {
        Bike(
            manufacturer: manufacturer ?? self.manufacturer,
            currentSpeed: currentSpeed ?? self.currentSpeed
        )
    }
}

let bike1 = Bike(manufacturer: "HD", currentSpeed: 20)
bike1.currentSpeed

let bike2 = bike1.copyWith(currentSpeed: 40)
bike2.currentSpeed
