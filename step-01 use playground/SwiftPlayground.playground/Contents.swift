import UIKit

/**
 * This is a playground file trying to practise Swift language basic features
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
