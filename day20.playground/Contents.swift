//: Playground - noun: a place where people can play

import UIKit

let digitNames = [
    0: "Zero", 1: "One", 2: "Two", 3: "Three", 4: "Four", 5: "Five",
    6: "Six", 7:"Seven", 8: "Eight", 9: "Nine"
]

let numbers = [16,58, 510]

let strings = numbers.map {
    (number) -> String in
    var number = number
    var output = ""
    repeat {
        output = digitNames[number % 10]! + output
        number /= 10
    }while number > 0
    return output
}

func makeIncrementer(forIncrement amount: Int) -> () -> Int {
    var runningToal = 0
    func incrementer() -> Int {
        runningToal += amount
        return runningToal
    }
    return incrementer
}

let incrementByTen = makeIncrementer(forIncrement: 10)
incrementByTen()
incrementByTen()
incrementByTen()





