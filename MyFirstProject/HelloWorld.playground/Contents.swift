import UIKit

//var greeting = "Hello, playground"
//print(greeting)

//let fruits: Set<String> = ["Banana", "Apple", "Qiwi"]
//let fruits = ["Banana", "Apple", "Qiwi"]
//
//for (_, index) in fruits {
//    print(index)
//}

let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 44, 9, 16, 25],
]
var largest = 0
for (_, numbers) in interestingNumbers {
    for number in numbers {
        largest = max(largest, number)
    }
}
print(largest)
