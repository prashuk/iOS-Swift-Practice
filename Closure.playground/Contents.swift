import UIKit

func closureWithOutEscaping(_ nums: [Int], handler: ((Int) -> ())) {
    var sum = 0
    for i in nums {
        sum += i
    }
    
    handler(sum)
}
closureWithOutEscaping([1,2,3,4,5]) { sum in
    print(sum)
}


// ---------------------------


@MainActor func closureWithEscaping1(_ nums: [Int], handler: @escaping ((Int) -> ())) {
    DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
        let sum = nums.reduce(0, +)
        handler(sum)
    }
}
closureWithEscaping1([1,2,3,4,5]) { sum in
    print(sum)
}


// ---------------------------


var completionHandler: ((Int) -> Void)?
@MainActor func closureWithEscaping2(_ nums: [Int], handler: @escaping ((Int) -> Void)) {
    let sum = nums.reduce(0, +)
    completionHandler = handler
}
closureWithEscaping2([1,2,3,4,5]) { sum in
    print(sum)
}


// ---------------------------

/*
Why they made @nonescaping by default?
performance and code optimisation by the compiler, because if the compiler knows that the closure is non-escaping, will take care about the memory allocation for the closure.

we can use self without problems in non-escaping closures because the closure executes before the function returns so the self will be there by sure. We don’t need to use weak self this is the additional feature of it 😉.

In Swift 3, closures are non-escaping by default, can be use @escaping if not what we want.
Non-escaping closure defiantly will execute before the function returns.
*/
