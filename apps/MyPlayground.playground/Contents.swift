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

/* lesson9: forでループ処理をしてみよう */
for i in 0...5 {
    if i == 2 {
        continue
    }
    if i == 5 {
        break
    }
    print(i)
}

/* lesson10: オプショナル型を使ってみよう */
let a10: Optional<String> = nil
let b10: String? = nil

if a10 != nil {
    print(a10!) // オプショナル型から値をとるのを unwrap するという
}

// optional binding
if let value10 = b10 {
    print(value10)
}

print(a10 ?? "nil です")

/* lesson11: 配列を使ってみよう */
// 配列、タプル
var scores11 = [50, 40]
scores11[0] = 30
print(scores11[0], scores11.count, scores11.isEmpty)

var names11 = [String]()
names11.append("yagisuke")
names11 += ["carlos"]

for (index, n) in names11.enumerated() {
    print(index + 1, n)
}

/* lesson12: タプルを使ってみよう */
var items12 = ("apple", 5)
print(items12.0)
items12.1 = 9
print(items12)

let (product12, amount12) = items12
print(product12, amount12)

var products12 = (product: "apple", amount: 5)
print(products12.product, products12.amount)

/* lesson13: 集合型のデータを扱ってみよう */
var winners13: Set<Int> = [3, 5, 8, 8, 3] // 重複は削除される
print(winners13)

winners13.insert(10)
winners13.remove(8)
print(winners13, winners13.count)

let s13 = Set<Int>()
print(s13.isEmpty)

let a13: Set = [1, 3, 5, 7]
let b13: Set = [3, 5, 8, 9]

print(a13.union(b13)) // 和集合
print(a13.intersection(b13)) // 積集合
print(a13.subtracting(b13)) // 差集合
