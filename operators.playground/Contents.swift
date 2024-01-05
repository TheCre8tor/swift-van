import Foundation

let my_age = 15
let your_age = 50

if my_age > your_age {
    "I'm older than you"
} else if my_age < your_age {
    "You are older than me"
} else {
    "We are the same age"
}

/// 1. unary prefix - working with single value to the left hand side
let is_loading = !true

let post_name: String? = Optional("Alexander");
type(of: post_name)

/// 2. unary postfix - working with single value to the right hand side
let unwrap_name: String = post_name!;
type(of: unwrap_name)


/// 3. binary infix - it is binary beacause it's working with two values
let double_my_age = my_age * 2;
let my_mother_age = my_age + 40;


// ternary operator
let is_four = 2 + 1;
let result = is_four == 4 ? "display" : "do not display";

func who_goes_there(age: Int) -> Int {
    return age;
}

let res = who_goes_there(age: 4);
print(res);

let research = 1.description;

// -
extension Int {
    func say_hello() {
        print("\(self): is a number");
    }
}

1.say_hello();

class Names {
    init(name: String, age: Int8) {
        self.name = name;
        self.age = age;
    }
    
    init(word: String) {
        self.name = word;
    }
    
    var name: String = "Alexander";
    var age: Int8 = 0;
    
    func check_name(name: String) -> Void {
        Swift.print("\(name) \(self.name)");
        print("\(name) \(self.name) | \(self.age)");
    }
    
    static func pronounce() -> Void {
        print("My name is Alexander");
    }
}

let name = Names(word: "Elijah");

class House {
    init() {
        Estate()
    }
    
    class Estate {
        init() {
            print("I like it")
        }
        
    }
    
}

let u = House()

func make_move(list_of_strings: String, _: Bool) -> Void {
    for stringx in list_of_strings {
        print(stringx)
    }
}

make_move(list_of_strings: "Alexander", true)
