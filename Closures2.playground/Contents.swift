//: Playground - noun: a place where people can play

import Cocoa

func makeCounter() -> () -> Int {
    var count = 0 // This value is captured by the closure (counter())
    
    func counter() -> Int {
        count += 1
        return count
    }
    
    return counter
}

let counter1 = makeCounter()

counter1()
counter1()


// -----------------------

// Student problem to solve - 
// Working with a partner make an iterator. 
// The iterator is a function that returns the next item in an array. 
// This should a closure. 
// Use a function that takes an array of String as a parameter and returns
// a function that returns the next String in the array 

/* You might start with something like: 
 
 func makeIterator(array: [String]) -> () -> String? {
    // ???
 }

*/

/* Use it like this:
 
 var it = makeIterator(["A", "B", "C"])
 it() // "A"
 it() // "B"
 it() // "C"
 it() // nil
 
 */







// Solution
// ---------------------------------












func makeIterator(array: [String]) -> () -> String? {
    var index = -1 // This value captured by the closure
    // array is also caltured by the closure
    
    func iterator() -> String? {
        index += 1
        if index >= array.count {
            return nil
        }
        return array[index]
    }
    
    return iterator
}

let it = makeIterator(["A", "B", "C", "D"])

it()
it()
it()
it()
it()


// -------------------------------

func makeGoblin() -> (Int) -> Int {
    var hitPoints = 4
    
    func goblin(damage: Int) -> Int {
        hitPoints -= damage
        
        return hitPoints
    }
    
    return goblin
}

let g1 = makeGoblin()

g1(1)
g1(2)















