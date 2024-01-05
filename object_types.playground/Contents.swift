//import Swift;

// object types
// 1. class
// 2. struct
// 3. enum

// object flexibility
// 1. generic
// 2. protocol
// 3. extension

type(of: 2) 

class HumanBlueprint {
    private var _name: String;
    private var _age: Int8;
    
    init() {
        _name = "Soddiq";
        _age = 26;
    }
    
    var name: String {
        set {
            if type(of: newValue) == Int.self {
                fatalError("Integer value can't be assigned to String");
            } else {
                type(of: newValue)
                _name = newValue;
            }
        }
        get { return _name }
    }
    
    var age: Int8 {
        set { _age = newValue }
        get { return _age }
    }
    
    func get_name() -> String {
        name
    }
    
    func get_age() -> Int8 {
        age
    }
}

class Human: HumanBlueprint {
    override init() {
        super.init();
    }
    
    init(human_name: String, age: Int8) {
        super.init();
        super.name = human_name;
        super.age = age;
    }

}



let object = Human(human_name: "Alexander", age: 28);

object.name
object.age

struct Digit {
    var number: Int;
    var meaningOfLife: Bool;
    
    init(number: Int) {
        self.number = number;
        self.meaningOfLife = false;
    }
    
    init() {
        self.init(number: 42);
        self.meaningOfLife = true;
    }
}

class Greetings {
    static let friendly = "Hello there!";
    static let hostile = "Go away!";
}

let friend = Greetings.friendly;
let hostile = Greetings.hostile;

