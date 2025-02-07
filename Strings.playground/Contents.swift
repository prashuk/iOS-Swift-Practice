import Foundation

// Initialize String
var emptyString = ""            // Empty (Mutable) String
let stillEmpty = String()       // Another empty String
let helloWorld = "Hello World!" // String literal
let verse = """
    Hello World!
    This is multiline string!
    """


// properties
helloWorld.lowercased()
helloWorld.uppercased()
helloWorld.isEmpty


// Prefix & Suffix
let password = "12345"
password.hasPrefix("123")
password.hasSuffix("345")


// Drop & Remove
var name = "Tom Dick Harry"
name.dropFirst()
name.dropLast()
name.dropFirst(3)
name.dropLast(5)
name.removeFirst()
name.removeLast()


// String Concatenation
var first = "Hello"
var second = "World"
print(first + " " + second)


// Working with Characters
for c in "Hello" {
    print(c, terminator: " ")
}
print()
let helloChar: [Character] = ["h", "e", "l", "l", "0"]
String(helloChar)


// Char properties
let a = "A" as Character
let pi = "π" as Character
a.isASCII
pi.isASCII
a.asciiValue
pi.asciiValue
a.isLetter
a.isSymbol
a.isMathSymbol
a.isCurrencySymbol
a.isPunctuation
a.isLowercase
a.isUppercase
a.lowercased()
a.uppercased()

let five = "5" as Character
let half = "½" as Character
five.isNumber
half.isNumber
five.isWholeNumber
five.wholeNumberValue
half.isWholeNumber
half.wholeNumberValue


// String Indices
let hello = "Hello, world!"
let startIndex = hello.startIndex
let endIndex = hello.endIndex
hello[startIndex]
hello[hello.index(after: startIndex)]
hello[hello.index(before: endIndex)]
hello[hello.index(startIndex, offsetBy: 1)]
hello[hello.index(endIndex, offsetBy: -1)]

for i in hello.indices {
    print(hello[i], terminator: " ")
}
print()


// Substring
let index = hello.firstIndex(of: ",") ?? hello.endIndex
let beginning = hello[..<index]
let endingIndex1 = hello.index(hello.startIndex, offsetBy: 7)
let ending1 = hello[endingIndex1...]
let endingIndex2 = hello.index(hello.endIndex, offsetBy: -1)
let ending2 = hello[endingIndex1..<endingIndex2]


// Insert
var stars = "******"
stars.insert("X", at: stars.index(stars.startIndex, offsetBy: 3))


// Replace
var stars2 = "***XYZ***"
if let xyzRange = stars2.firstRange(of: "XYZ") {
  stars2.replaceSubrange(xyzRange, with: "ABC")
}
let stars3 = stars2.replacingOccurrences(of: "ABC", with: "XYZ")


// Split & Join String
let exmaple = "1 2 3 4 5 6"
let stringToArray = exmaple.components(separatedBy: " ")
let stringFromArray = stringToArray.joined(separator: ",")


// Conversion
let number = 20
let numInString = String(number)
let againToInt = Int(numInString)
