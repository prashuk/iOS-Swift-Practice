import Foundation

let nums: [Int] = [2,3,4,5,4,7,2,6,8,9]


// Map
// Use map to loop over a collection and apply the same operation to each element in the collection.
var mulBy10Map: [Int] = []
mulBy10Map = nums.map({ a in a * 10 })
mulBy10Map = nums.map({ $0 * 10 })
mulBy10Map = nums.map { $0 * 10 }

// Get index as well with enumerated
mulBy10Map.enumerated().map { (index, element) in
    element; index
}

// Replace a with (key, value) if it is a map


// ---------------------------------------------------------------


// Filter
// Use filter to loop over a collection and return an Array containing only those elements that match an include condition.
var evenNumsFilter: [Int] = []
evenNumsFilter = nums.filter({ a in a % 2 == 0 })
evenNumsFilter = nums.filter({ $0 % 2 == 0 })
evenNumsFilter = nums.filter { $0 % 2 == 0 }

// Replace a with (key, value) if it is a map


// --------------------------------------------------------------- //


// Reduce
// Use reduce to combine all items in a collection to create a single new value.
// Get sum of all numbers
var sum = 0
sum = nums.reduce(0, { x, y in x + y })
sum = nums.reduce(100, { x, y in x + y })
sum = nums.reduce(0, { $0 + $1 })
sum = nums.reduce(0) { $0 + $1 }
sum = nums.reduce(0, +)

/*
 This reduce function will iterate four times.
 Initial value is 0, x is 0, y is 1 → returns x+y . So, initial value or Result becomes 1.
 Initial value or Result is 1, x is 1, y is 2 → returns x+y . So, initial value or Result becomes 3 .
 Initial value or Result is 3, x is 3, y is 3→ returns x+y . So, initial value or Result becomes 6.
 Initial value or Result is 6, x is 6, y is 4→ returns x+y . So, initial value or Result becomes 10
 */

let codes = ["abc","def","ghi"]
let mergeText = codes.reduce("", +)

let bookAmount = ["harrypotter": 100.0, "junglebook": 1000.0]
var books = ""
books = bookAmount.reduce("Books are ") { x, y in x + y.key + " " }
var amount = 0.0
amount = bookAmount.reduce(0) { x, y in x + y.value }

books = bookAmount.reduce("Books are ") { $0 + $1.key + " " }
amount = bookAmount.reduce(0) { $0 + $1.value }
amount = bookAmount.reduce(0) { $0 + $1.1 }


// --------------------------------------------------------------- //


// FlatMap
// FlatMap is used to flatten a collection of collections. But before flattening the collection, we can apply map to each elements.
// Update all letters to uppercase and combine all arrays in one
let strs = [["abc","def","ghi"],["abc","def","ghi"]]
let newStrs = strs.flatMap { $0 }


// --------------------------------------------------------------- //


// All combine
let arr = [[1,2,3,4], [5,6]]
var ans = 0
ans = arr.flatMap{$0}.map{$0 * 10}.filter{$0 % 2 == 0}.reduce(0, +)


// --------------------------------------------------------------- //


// Compact Map
// Returns an array containing the non-nil results of calling the given transformation with each element of this sequence.
let array = [1, 2, nil, 4, nil, 5, 6]
let compactArray = array.compactMap { $0 }


// --------------------------------------------------------------- //


// Stride
// Move from one value to another by an increment
for i in stride(from: 2, to: 20, by: 2) {
    print(i, terminator: " ")
}
print()
for i in stride(from: 20, to: 0, by: -2) {
    print(i, terminator: " ")
}
print(stride(from: 0, through: 10, by: 1))
for i in stride(from: 0, through: 10, by: 1) {
    print(i, terminator: " ")
}
