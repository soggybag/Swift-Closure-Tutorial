//: Playground - noun: a place where people can play

import Cocoa




// Function -

func saysHello() {
    print("Hello")
}

// Call the function
saysHello()






// Closure -
var message = {
    print("Whats up!")
}

// Call the function
message()



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

print(multiplier(3, 4))

// -----------------------------


// Exercise: Write some math functions. Use the multiplier above as  model.
// Write some closures that do the following:

// adder: Adds two Int


// Subtracter: subtracts one Int from another



// Make up a math function of your own that takes two Int and returns an Int





// -----------------------------

// Closures can be assigned to variables, for example:

var lastOperation = multiplier

print(lastOperation(2, 7))

// Try that with one of your closures




// Closures can be passed as parameters to other functions:
// doMath() takes two Ints and a closure. The closure must take two Ints 
// and return an Int

func doMath(a: Int, b: Int, operation: (Int, Int) -> Int) {
    print(operation(a, b))
}

// Apply some math

doMath(a: 33, b: 21, operation: multiplier)

// Try that with your closure





// -----------------------------

// You can also write your closure inline:

doMath(a: 11, b: 3) { (a, b) -> Int in
    return a > b ? a : b
}



func getBrunch(optionClosure:() -> (), time: Int) {
  print("Going for brunch.")
  optionClosure()
}

getBrunch(optionClosure: { print("Anything edible") }, time: 99)







func add(number1: Int, number2: Int) -> Int {
 return number1 + number2
}

// ------------------------------------------------

var calc: (Int, Int) -> Int = { (a: Int, b: Int) in
  return a + b
}

calc = { (c: Int, d: Int) in
  return c * d
}

func calculate(n1: Int, n2: Int, op: (Int, Int) -> Int) {
  print( op(n1, n2) )
}

calculate(n1: 33, n2: 44, op: { (a: Int, b: Int) in return a + b })























