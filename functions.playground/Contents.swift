func noArgsAndNoReturnValue() -> Void {
    "I don't know what I'm doing"
}

noArgsAndNoReturnValue()

func remove_character(_ c: Character, from s: inout String) -> Int {
    var how_many = 0;
    
    while let ix = s.lowercased().firstIndex(of: c) {
        s.remove(at: ix);
        how_many += 1;
    }
    
    return how_many;
}

var name = "Alexander";
remove_character("a", from: &name);

var age = "Sixteen";

for (idx, value) in age.enumerated() {
    print("Value: \(value)");
    print("idx: \(idx)");
}

@discardableResult
func customAdd(_ lhs: Int, _ rhs: Int) -> Int {
    return lhs + rhs
}

customAdd(23, 40)

// function hosting another function

func doSomethingComplecated(with value: Int) -> Int {
    func mainLogic(value: Int) -> Int {
        value + 2
    }
    
    return mainLogic(value: value + 3)
}

doSomethingComplecated(with: 30)

func functionWithDefaultValue(with value: Int = 20) -> Int {
    value + 30
}


functionWithDefaultValue()
