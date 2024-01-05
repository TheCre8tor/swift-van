import Foundation

// regular function declaration

func add(_ lsh: Int, with rsh: (Int, Int) -> Int) -> Int {
    lsh + rsh(2, 3)
}

// non-closure

func nonClosure(a: Int, b: Int) -> Int {
    a + b
}

// closure

let closure: (Int, Int) -> Int = { (lsh: Int, rsh: Int) -> Int in
    return lsh + rsh
}

add(5, with: closure)
add(5, with: nonClosure)

func customAdd(
    _ lsh: Int,
    _ rsh: Int,
    using fn: (Int, Int) -> Int
) -> Int {
    fn(lsh, rsh)
}

customAdd(10, 15, using: closure)

// invocation with trailing closure syntax

customAdd(80, 20, using: {
    (lsh: Int, rsh: Int) -> Int in
    return lsh + rsh
})

customAdd(80, 20) { (lsh: Int, rsh: Int) -> Int in
    return lsh + rsh
}
 
// without data types
// this version looks simple but it's a trade off for compile time speed

customAdd(45, 20) { (lsh, rsh) in
    return lsh + rsh
}

customAdd(45, 20) {
    return $0 + $1
}
 
// closure experiments ->

let ages: Array<Int> = [30, 20, 19, 40]

ages.sorted() { (lsh: Int, rsh: Int) throws -> Bool in
    lsh > rsh
}

ages.sorted() {
    $0 > $1
}

ages.sorted(by: {(lsh: Int, rsh: Int) throws -> Bool in
    lsh > rsh
})

ages.sorted(by: {
    $0 > $1
})

func greaterSorter(_ lsh: Int, _ rsh: Int) throws -> Bool {
    lsh > rsh
}

func lesserSorter(_ lsh: Int, _ rsh: Int) throws -> Bool {
    lsh < rsh
}

ages.sorted(by: greaterSorter)

ages.sorted(by: <)

ages.sorted(by: >)
