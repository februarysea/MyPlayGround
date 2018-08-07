97090//: Playground - noun: a place where people can play

import Foundation

//Closures（闭包）
let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]

func backward(_ s1: String, _ s2:String) -> Bool {
    return s1 > s2
}
var reversedName = names.sorted(by: backward)

reversedName = names.sorted(by: { (s1: String, s2:String) -> Bool in
    return s1 > s2
})

reversedName =  names.sorted(by: {s1, s2 in return s1 > s2})

reversedName = names.sorted(by: {s1, s2 in s1 > s2})

reversedName = names.sorted(by: {$0 > $1 })

reversedName = names.sorted(by: >)

//尾随闭包
let digitNames = [
    0: "Zero", 1: "One", 2: "Two", 3: "Three", 4:"Four",
    5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine",
]
let numbers = [16,58, 510]
let stringss = numbers.map {
    (number) -> String in
    var number = number
    var output = ""
    repeat {
        output = digitNames[number % 10]! +output //force-unwrap
        number /= 10
    }while number > 0
    return output
}

