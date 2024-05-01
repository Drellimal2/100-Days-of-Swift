import Cocoa

var greeting = "Hello, playground"
print(greeting)

print(greeting.uppercased())

greeting.hasPrefix("Hello")

greeting.hasSuffix("d")

let score = 5
let lowerScore = score - 2
let higherScore = score + 10
let doubledScore = score * 2
let squaredScore = score * score
let halvedScore = score / 2
print(score)

let div3num = 111222444777888
print(div3num.isMultiple(of: 3))


var val = true
val.toggle()
val

var name = "Dane"
let phrase = "Hi \(name)"


// Checkpoint 1

let celcius = 25.0

let farenheit = celcius * (9.0/5.0) + 32

print("\(celcius)C is \(farenheit)F")


// Day 3


var beatles = ["John", "Paul", "George", "Ringo"]
let numbers = [4, 8, 15, 16, 23, 42]
var temperatures = [25.3, 28.2, 26.4]

var scores = Array<Int>()
scores.append(100)
scores.append(80)
scores.append(85)
print(scores[1])


var albums = [String]()
albums.append("Folklore")
albums.append("Fearless")
albums.append("Red")
albums.count
albums.contains("Red 2")


//Dictionaries
let myself = [
    "name": "Dane Miller",
    "job": "Student",
    "location": "Tokyo"
]

print(myself["name", default: "Unknown"])
print(myself["job", default: "Unknown"])
print(myself["location", default: "Unknown"])

var archEnemies = [String: String]()
archEnemies["Batman"] = "The Joker"
archEnemies["Superman"] = "Lex Luthor"


enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}

let today = Weekday.wednesday

enum Weekday2 {
    case monday, tuesday, wednesday, thursday, friday
}

// Checkpoint 2

enum Colors {
    case blue, black, white, green, yellow, pink, red, purple
}

var favoritecolors = [Colors]()
favoritecolors.append(.yellow)
favoritecolors.append(.blue)
favoritecolors.append(.pink)
favoritecolors.append(.red)
favoritecolors.append(.purple)
favoritecolors.append(.blue)


print(favoritecolors.count)

print(Set(favoritecolors).count)

