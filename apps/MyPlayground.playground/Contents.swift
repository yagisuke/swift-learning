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
