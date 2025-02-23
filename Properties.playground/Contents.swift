import UIKit

// Type Properties
// A type property in Swift is a property that belongs to the type itself, not to individual instances, and is accessed using the type name followed by a dot;

@MainActor
struct TaylorFan {
    static var favoriteSong = "Look What You Made Me Do"

    var name: String
    var age: Int
}

let fan = TaylorFan(name: "James", age: 25)
print(fan.name)
// print(TaylorFan.name) // error
// print(fan.favoriteSong) // error
print(TaylorFan.favoriteSong)

TaylorFan.favoriteSong = "Love Me Like You Do"
print(TaylorFan.favoriteSong)
