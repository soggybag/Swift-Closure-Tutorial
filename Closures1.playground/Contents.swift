//: Playground - noun: a place where people can play

import Cocoa




// Function -

func saysHello() {
    print("Hello")
}








// Closure -
var message = {
    print("Whats up!")
}





/* 
 
 Closures can also take parameters and return values
 
 
 { (params) -> returnType in
    ... Code block ...
 }
 
 
 
 For example
 
 { (a: String) -> String in
    ...does something with a...
    return someString
 }
 
 */


// ----------------------------

// Like functions closures take parameters 
// and return values

var multiplier = { (a: Int, b: Int) -> Int in
    return a * b
}

// Invoke a closure just like a function

multiplier(3, 4)

// -----------------------------


// Exercise: Write some math functions. Use the multiplier above as  model.
// Write some closures that do the following:

// adder: Adds two Int


// Subtracter: subtracts one Int from another



// Make up a math function of your own that takes two Int and returns an Int





// -----------------------------

// Closures can be assigned to variables, for example:

var lastOperation = multiplier

lastOperation(2, 7)

// Try that with one of your closures




// Closures can be passed as parameters to other functions:

func doMath(a: Int, b: Int, operation: (Int, Int) -> Int) {
    print(operation(a, b))
}

// Apply some math

doMath(33, b: 21, operation: multiplier)

// Try that with your closure





// -----------------------------

// You can also write your closure inline:

doMath(11, b: 3) { (a, b) -> Int in
    return a > b ? a : b
}






