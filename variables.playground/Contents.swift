import Foundation

var my_name = "Alexander";

// let keyword is immutable but you can't reassign a new value to it.
let your_name: String = "Cynthia";

var our_name: [String] = [my_name, your_name];

our_name.append("John");
our_name.append("James");
our_name.remove(at: 1)
our_name;

// swift value types
let eat = "Eat";
var ate = eat; // eat variable is copied into ate
ate = "Eat 2";
eat;
ate;

let more_names = ["Foo", "Bar"];
var more_names_copy = more_names;
more_names_copy.append("Bazz");
more_names;
print("List: \(more_names)")

///---
/// structures are value types while classed are reference type
///---

// swift reference types
// note: classes are reference type
let old_array = NSMutableArray(array: ["Foo", "Bar"]);
old_array.add("Baz");
var new_array = old_array;
new_array.add("Qux");
old_array;
new_array;

let some_names = NSMutableArray(array: ["Foo", "Bar"]);

func change_the_array(_ array: NSArray) {
    let new = array as! NSMutableArray; // [forceful downcast]: bad practice
    // internal mutability of let constant
    new.add("Elijah");
}

change_the_array(some_names);
some_names
