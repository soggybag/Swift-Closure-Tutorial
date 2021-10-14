//: Playground - noun: a place where people can play

import Cocoa

func makeCounter(n: Int = 1) -> () -> Int {
  var count: Int = 0 // This value is captured by the closure (counter())
  // ----------------------
  func counter() -> Int {
      count += n
      return count
  }
  // ----------------------
  return counter
}

let next = makeCounter(n: -1)
let counter2 = makeCounter(n: 77)
print( next() )
print( next() )
print( next() )
print( next() )
print( counter2() )
print( counter2() )
print( next() )














var numbers = [9,4,2,8,6,3]

numbers.sort(by: { a, b in
  return a < b
})

print(numbers)

func doesStuff(arr: [Int], op: (Int) -> Int) -> [Int] {
  var result = [Int]()
  for i in arr {
    result.append(op(i))
  }
  return result
}

var t = doesStuff(arr: numbers, op: { $0 / 2 })
t.sort(by: { $0 < $1 })







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

let it = makeIterator(array: ["A", "B", "C", "D"])

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
g1(2)














func add(number1: Int, number2: Int) -> Int {
  return number1 + number2
}

let addSome = { (n1: Int, n2: Int) -> Int in
  return n1 + n2
}

print(addSome(23, 43))



