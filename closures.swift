// Write a closure stored in a variable called sayHello
// It should print: Hello Swift

// Call the closure below
let greeting = {
    print("Hello Swift")
}
greeting()

///------------------------------------------------------------------------------

// Create a closure called doubleNumber
// It takes one Int parameter
// It returns the number multiplied by 2
// Test it with the value 6

let doubleNumber = {a : Int in a*2}
doubleNumber(6)

///------------------------------------------------------------------------------

// Create a closure called addNumbers
// It takes two Int
// It returns their sum
// Test with:
// 3 and 7

let addNumbers = {a : Int, b : Int in a + b}
addNumbers(3,7)

///------------------------------------------------------------------------------

func compute(a: Int, b: Int, operation: (Int, Int) -> Int) -> Int {
    return operation(a, b)
}
// Call compute and pass a closure that multiplies a and b
compute(a : 1, b:2, operation: {a,b in a*b})
// Call compute using: $0 and $1
compute(a : 1, b:2, operation: {$0*$1})

///------------------------------------------------------------------------------

let numbers = [1, 2, 3, 4]

// Use map to create a new array
// where each number is multiplied by 3

let numMultiByThree = numbers.map {$0*3}

///------------------------------------------------------------------------------

let numberss = [5, 8, 10]

// Use map to produce:
// ["Value: 5", "Value: 8", "Value: 10"]

let numVal = numberss.map {"Value: \($0)"}

///------------------------------------------------------------------------------

let numbersList = [9, 2, 7, 1]

// Sort the array in ascending order
// using sorted with a closure

let orderedArray = numbersList.sorted {$0 < $1}

///------------------------------------------------------------------------------

let numero = [9, 2, 7, 1]

// Sort the array in descending order
// using sorted with a closure
// use $0 and $1

let descendingArray = numero.sorted {$0 > $1}


///------------------------------------------------------------------------------

func computee(a: Int, b: Int, operation: (Int, Int) -> Int) -> Int {
    return operation(a, b)
}

// Call compute:

// 1) with addition
// 2) with multiplication

// Print both results

let addition = computee(a: 2, b: 3, operation : {$0 + $1})
let multiplication = computee(a: 2, b: 3, operation : {$0 * $1})

print(addition)
print(multiplication)
