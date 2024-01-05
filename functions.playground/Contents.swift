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
