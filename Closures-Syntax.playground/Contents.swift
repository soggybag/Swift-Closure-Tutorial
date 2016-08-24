//: Playground - noun: a place where people can play

import Cocoa

let names = ["Rex", "Frango", "Bolivar", "Hank", "Balthazar", "Braullio"]

// Sort uses a closure to perform a sort on an array
// Each of the examples below does the same thing
// Swift provides syntactic options to simplify how we write closures

// 1 - Long form
let sortedNames = names.sort({ (a, b) -> Bool in
    return a < b
})


// 2 - No need for parenthesis
names.sort { (a, b) -> Bool in
    return a < b
}


// 3 - No need params, use $0... instead
names.sort {
    return $0 < $1
}


// 4 - Implied return
names.sort {$0 < $1}


// 5 - If the operator is a function everything else is implied
names.sort(<)


// Essentially all of the example 1-5 above do the same thing. 
// What kind of rules can you infer from this?
