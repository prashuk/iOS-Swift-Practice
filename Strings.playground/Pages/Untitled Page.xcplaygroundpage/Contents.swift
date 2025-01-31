import UIKit

// Characters
let a = "A" as Character
let A = "a" as Character
let pi = "π" as Character
a.isASCII
pi.isASCII
a.asciiValue
A.asciiValue
pi.asciiValue

let five = "5" as Character
let half = "½" as Character
five.isNumber
half.isNumber

five.isWholeNumber
five.wholeNumberValue
half.isWholeNumber
half.wholeNumberValue

a.isLetter
let smiley = "😀" as Character
smiley.isSymbol
smiley.isLetter

let plus = "+" as Character
plus.isSymbol
plus.isLetter
plus.isMathSymbol
smiley.isMathSymbol

let dollar = "$" as Character
dollar.isCurrencySymbol

let qmark = "?" as Character
qmark.isPunctuation

// Strings
let greeting = "Hello, playground"

// String Indices
let startIndex = greeting.startIndex
let endIndex = greeting.endIndex
greeting[greeting.index(after: startIndex)]
greeting[greeting.index(before: endIndex)]

greeting[greeting.index(startIndex, offsetBy: greeting.count-1)]
greeting[greeting.index(endIndex, offsetBy: -4)]

for index in greeting.indices {
    print(greeting[index])
}


// Sub String
let indexOfComma = greeting.firstIndex(of: ",") ?? greeting.endIndex
let strBeforeComma = greeting[..<indexOfComma] // type of String.Subsequence
let orStrBeforeComma = greeting[greeting.startIndex..<indexOfComma]

/// Convert the result to a string for long term storage
let newString = String(strBeforeComma)

let indexOfW = greeting.lastIndex(of: "p") ?? greeting.endIndex
let worldString = greeting[indexOfW..<greeting.endIndex]

/// Insert a Char in String
var stars = "******"
stars.insert("X", at: stars.index(stars.startIndex, offsetBy: 3))

var stars2 = "***XYZ***"
stars2.replacingOccurrences(of: "XYZ", with: "ABC")

// Split/Join
var numbers = "1 2 3 4 5 6 7"
let numbersArray = numbers.components(separatedBy: " ")
let stringNumberArray = numbersArray.joined(separator: ",")
