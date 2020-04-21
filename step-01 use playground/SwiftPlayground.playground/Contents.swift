import UIKit

/**
 * This is a playground trying to practice Swift language basic features: https://docs.swift.org/swift-book/
 */

// Constants and Variables
var str = "Hello, playground"
let num = 1000

// "let" can't be assigned to other value
// num = 200

// "var" is OK to change the origin value
str = "Testing"

// Type Annotations
var greeting: String
greeting = "Hello World"
// greeting = 123 // 因为规定了greeting变量的类型，如果被赋予其它类型的值，就会抛错

// Constants & Variables 命名
let 你好 = "世界，你好！"
let 🐱 = "cat 🐱"

// print函数
print("I love \(🐱)")
// print函数的原型 - print(_:separator:terminator:)
print(greeting, terminator: "!")

// minValue is equal to 0, and is of type UInt8
let minValue = UInt8.min
// maxValue is equal to 255, and is of type UInt8
let maxValue = UInt8.max

// 数字表达式
let paddedDouble = 000123.456
let oneMillion = 1_000_000
let justOverOneMillion = 1_000_000.000_000_1

let three = 3
let pointOneFourOneFiveNine = 0.14159
let pi = Double(three) + pointOneFourOneFiveNine
// pi equals 3.14159, and is inferred to be of type Double

/* 类型别名 */
typealias AudioSample = UInt16
// maxAmplitudeFound is now 0
var maxAmplitudeFound = AudioSample.min
print(maxAmplitudeFound)

// 布尔值
let orangesAreOrange = true
let turnipsAreDelicious = false

if turnipsAreDelicious {
    print("Mmm, tasty turnips!")
} else {
    print("Eww, turnips are horrible.")
}
// Prints "Eww, turnips are horrible."

// Tuples
let http404Error = (404, "Not Found")
// http404Error is of type (Int, String), and equals (404, "Not Found")

// 可选类型
var serverResponseCode: Int? = 404
serverResponseCode = nil

// Implicitly Unwrapped Optionals
// Implicitly unwrapped optionals are useful when an optional’s value is confirmed to exist

let possibleString: String? = "An optional string."
let forcedString: String = possibleString! // requires an exclamation point

let assumedString: String! = "An implicitly unwrapped optional string."
let implicitString: String = assumedString // no need for an exclamation point

let age = -3
//assert(age >= 0, "A person's age can't be less than zero.") // This assertion fails because -3 is not >= 0.

// 强制的先决条件 - precondition(_:_:file:line:)
let index = 10
precondition(index > 0, "Index must be greater than zero.") // 如果index为负数，会在执行时抛出error信息

// Nil-Coalescing 操作符
// (a ?? b) 等价于 a != nil ? a! : b

// 范围操作符
for index in 1...5 {
    print("\(index) times 5 is \(index * 5)")
}
