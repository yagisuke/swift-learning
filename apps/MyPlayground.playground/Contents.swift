/* lesson2: はじめてのSwiftプログラム */
// single comment
/*
 multi
 comment
 */
print("hello world")
print("hello")

/* lesson3: 定数と変数を使ってみよう */
// 定数 let
// 変数 var

let msg3 = "hello world"
print(msg3)

/* lesson4: 基本的なデータ型を見ていこう */
// Int
let a4: Int = 10

// Float/Double
let b4: Double = 53.8

// String
let c4: String = "hello"

// Bool
let d4: Bool = true

// 型変換のサンプル
var x = "four"
x = String(4)

/* lesson5: データの演算をしてみよう */
print(10 + 3) // 13
print(10 - 3) // 7
print(10 / 3) // 3
print(10.0 / 3) // 3.3333...
print(10 % 3) // 1

var a5 = 10
a5 += 5
print(a5) // 15

var b5 = 29
print("私の年齢は\(b5)才です。")

/* lesson6: ifで条件分岐をしてみよう */
let score6 = 82
let result:String

if score6 > 80 {
    result = "greate"
} else if score6 > 70 {
    result = "good"
} else {
    result = "so so.."
}
print("あなたの得点は\(score6)です。評価は、resultです。")
print(score6 > 70 ? "good" : "bad")

/* lesson7: switchで条件分岐をしてみよう */
let num7 = 90

switch num7 {
case 0:
    print("zero")
case 1, 2, 3:
    print("small")
case 4...6:
    print("4/5/6")
case 7..<9:
    print("7/8")
case let n where n > 10:
    print("\(n) is huge.")
default:
    print("default")
}

/* lesson8: whileで繰り返し処理をしてみよう */
var n8 = 0

// 条件判定を前にする場合
while n8 < 3 {
    print(n8)
    n8 += 1
}

// 条件判定を後にする場合
repeat {
    print("repeat\(n8)")
    n8 += 1
} while n8 < 3
