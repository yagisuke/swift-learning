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

/* lesson14: 辞書型のデータを扱ってみよう */
var sales14: Dictionary<String, Int> = ["yagisuke": 100, "carlos": 200]
print(sales14["yagisuke"] ?? "0")

sales14["yusuke"] = 90
print(sales14.count)

for (key, value) in sales14 {
    print("\(key): \(value)")
}

let d14 = [String: Int]()
print(d14.isEmpty)

/* lesson15: 関数を使ってみよう */
func sayHi15() {
    print("hi")
}

func getHi15() -> String {
    return "hi"
}

sayHi15()
print(getHi15())

/* lesson16: 引数について理解しよう */
func sayHi16(name: String) {
    print("hi \(name)")
}

func sayHello16(from name: String) {
    print("hello \(name)")
}

func sayBye16(_ name: String) {
    print("bye \(name)")
}

func sayGood16(_ name: String = "John") {
    print("Good!! \(name)!!")
}

sayHi16(name: "Tom")
sayHello16(from: "Bob")
sayBye16("Deen")
sayGood16()

/* lesson17: inoutキーワードを使ってみよう */
func add17(x: inout Int) {
    x = x + 10
    print(x)
}

var i17 = 10
add17(x: &i17)
print(i17)

/* lesson18: クラスで型を作ってみよう */
class User18 {
    let name: String // property
    var score: Int

    init() {
        self.name = "me!"
        self.score = 23
    }
}

let user18 = User18()
print(user18.name, user18.score)
user18.score += 1
print(user18.name, user18.score)

/* lesson19: イニシャライザを使ってみよう */
class User19 {
    let name: String // property
    var score: Int

    init(name: String, score: Int) {
        self.name = name
        self.score = score
    }

    init() {
        self.name = "yagisuke"
        self.score = 29
    }
}

let tom19 = User19(name: "tom", score: 23)
print(tom19.name, tom19.score)
let yagisuke19 = User19()
print(yagisuke19.name, yagisuke19.score)

/* lesson20: 計算プロパティを扱ってみよう */
class User20 {
    let name: String // property
    var score: Int
    // 計算プロパティ
    var level: Int {
        get {
            return Int(score / 10)
        }
        set {
            if newValue >= 0 {
                score = newValue * 10
            }
            
        }
    }
    
    init(_ name: String, _ score: Int) {
        self.name = name
        self.score = score
    }
}

let tom20 = User20("tom", 988)
print(tom20.level)
tom20.level = 30
print(tom20.score)
tom20.level = -30
print(tom20.score)

/* lesson21: プロパティの値を監視しよう */
class User21 {
    let name: String // property
    var score: Int {
        willSet {
            // before change
            print("\(score) -> \(newValue)")
        }
        didSet {
            // after change
            print("Changed: -> \(score - oldValue)")
        }
    }

    init(_ name: String, _ score: Int) {
        self.name = name
        self.score = score
    }
}

let yagiuke21 = User21("yagisuke", 5)
yagiuke21.score = 10
yagiuke21.score = 3

/* lesson22: メソッドを使ってみよう */
class User22 {
    let name: String // property
    var score: Int
    
    init(_ name: String, _ score: Int) {
        self.name = name
        self.score = score
    }
    
    func sayHi(_ msg: String) {
        print("\(msg) \(name)")
    }
}

let tom22 = User22("tom", 23)
tom22.sayHi("Good!")

/* lesson23: クラスを継承してみよう */
// User => AdminUser
class User23 {
    let name: String // property
    var score: Int
    
    init(_ name: String, _ score: Int) {
        self.name = name
        self.score = score
    }
    
    func sayHi(_ msg: String) {
        print("\(msg) \(name)")
    }
}

class AdminUser23: User23 {
    func sayHello() {
        print("hello \(name)")
    }
    
    override func sayHi(_ msg: String) {
        print("[admin] \(msg) \(name)!!")
    }
}

let user23 = AdminUser23("yagisuke", 11)
print(user23.name, user23.score)
user23.sayHello()
user23.sayHi("BAD!!")

/* lesson24: 型プロパティ､型メソッドを使おう */
class User24 {
    let name: String // property
    var score: Int
    static var count = 0
    
    init(_ name: String, _ score: Int) {
        self.name = name
        self.score = score
        User24.count += 1
    }

    class func getInfo() -> String {
        return String(count)
    }
}

class AdminUser24: User24 {
    override class func getInfo() -> String {
        return "[admin] \(count)"
    }
}

print("\(User24.getInfo()) instances.")
let yagisuke24 = User24("yagisuke", 29)
print("\(User24.getInfo()) instances.")
let carlos24 = AdminUser24("carlos", 29)
print("\(AdminUser24.getInfo()) instances.")
let yagi24 = User24("yagi", 29)
print("\(User24.getInfo()) instances.")

/* lesson25: 型キャストを使ってみよう */
class User25 {
    let name: String
    var score: Int
    
    init(_ name: String, _ score: Int) {
        self.name = name
        self.score = score
    }
}

class AdminUser25: User25 {}

let user25 = User25("user rider", 12)
let admin25 = AdminUser25("admin rider", 21)

let users = [user25, admin25]
for user in users {
    if let u = user as? AdminUser25 {
        print("[admin]: \(u.name) \(u.score)")
    }
    
    if user is AdminUser25 {
        print("[admin]: \(user.name) \(user.score)")
    }
}

/* lesson26: プロトコルを適合させてみよう */
protocol Printable26 {
    var type: String { get }
    var count: Int { get set }
    func printout()
}

class User26: Printable26 {
    let name: String
    let type = "Laser"
    var count = 0
    init(_ name: String) {
        self.name = name
    }
    func printout() {
        count += 1
        print("\(type): \(name), \(count)")
    }
}

let yagisuke26 = User26("yagisuke")
yagisuke26.printout()
yagisuke26.printout()
yagisuke26.printout()

/* lesson27: エクステンションで型を拡張しよう */
extension String {
    var length: Int {
        return self.count
    }
}

let msg27 = "hello"
print(msg27.count)
print(msg27.length)

protocol Printable27 {
    func printout()
}

extension Printable27 {
    func printout() {
        print("now printing...")
    }
}

class User27: Printable27 {
    let name: String
    init(_ name: String) {
        self.name = name
    }
}

let tom27 = User27("tom")
tom27.printout()

/* lesson28:  */
class User28 {
    var name: String
    init(_ name: String) {
        self.name = name
    }
}

var original28 = User28("tom")
var copy28 = original28
original28.name = "bob"
print(original28.name)
print(copy28.name)

/* lesson29: 構造体を使ってみよう */
struct User29 {
    var name: String
    init(_ name: String) {
        self.name = name
    }
    mutating func changeName() {
        self.name = name.uppercased()
    }
}

var original29 = User29("tom")
var copy29 = original29
original29.name = "bob"
print(original29.name)
print(copy29.name)

/* lesson30: 列挙型を使ってみよう */
enum Direction30 {
    case right
    case left
}
var dir30: Direction30
// dir30 = Direction30.left
dir30 = .left

switch  (dir30) {
case .right:
    print("right")
case .left:
    print("left")
}

enum Jiku30: Int {
    case right = 1
    case left = -1
}

print(Jiku30.left.rawValue)
