import Cocoa


let score = 85

if score > 80 {
    print("Great job!")
}


let userAge = 29
let hasParentalConsent = false

if userAge >= 18 || hasParentalConsent {
    print("You can buy the game")
}


enum TransportOption {
    case airplane, helicopter, bicycle, car, scooter
}

let transport = TransportOption.scooter

if transport == .airplane || transport == .helicopter {
    print("Let's fly!")
} else if transport == .bicycle {
    print("I hope there's a bike path…")
} else if transport == .car {
    print("Time to get stuck in traffic.")
} else {
    print("I'm going to hire a scooter now!")
}

switch transport {
    case .airplane, .helicopter:
        print("Let's fly!")
    case .bicycle:
        print("I hope there's a bike path…")
    case .car:
        print("Time to get stuck in traffic.")
    case .scooter:
        print("I'm going to hire a scooter now!")

}


let day = 5
print("My true love gave to me…")

switch day {
case 5:
    print("5 golden rings")
    fallthrough
case 4:
    print("4 calling birds")
    fallthrough
case 3:
    print("3 French hens")
    fallthrough
case 2:
    print("2 turtle doves")
    fallthrough
default:
    print("A partridge in a pear tree")
}


enum Tiers{
    case platinum, gold, silver, bronze
}

let mytier :Tiers = .silver
print("You recieve")
switch mytier {
    case .platinum:
        print("2 holo sprays")
        fallthrough
    case .gold:
        print("2 Free skins")
        fallthrough
    case .silver:
        print("1 kill animation")
        fallthrough
    
    case .bronze:
        print("1 custom title")
        fallthrough
    
    default:
        print("200g")
   
}

enum Theme {
    case light, dark
}

let theme = Theme.dark

let background = theme == .dark ? "black" : "white"
print(background)


let platforms = ["iOS", "macOS", "tvOS", "watchOS"]

for os in platforms {
    print("Swift works great on \(os).")
}


for i in 1...12 {
    print("5 x \(i) is \(5 * i)")
}

for _ in 1..<5 {
    print("I love you")
}

// create an integer to store our roll
var roll = 0

// carry on looping until we reach 20
while roll != 20 {
    // roll a new dice and print what it was
    roll = Int.random(in: 1...20)
    print("I rolled a \(roll)")
}

// if we're here it means the loop ended – we got a 20!
print("Critical hit!")


let filenames = ["me.jpg", "work.txt", "sophie.jpg", "logo.psd"]

for filename in filenames {
    if !filename.hasSuffix(".jpg")  {
        continue
    }

    print("Found picture: \(filename)")
}



//Checkpoint 3 - Fizz Buzz

for i in 1...100 {
    if i.isMultiple(of: 3) && i.isMultiple(of: 5){
        print("FizzBuzz")
    } else if i.isMultiple(of: 5) {
        print("Buzz")
    } else if i.isMultiple(of: 3) {
        print("Fizz")
    } else {
        print(i)
    }
            
}


func showWelcome() {
    print("Welcome to my app!")
    print("By default This prints out a conversion")
    print("chart from centimeters to inches, but you")
    print("can also set a custom range if you want.")
}

showWelcome()

func rollDice() -> Int {
    return Int.random(in: 1...6)
}

let result = rollDice()
print(result)

func pythagoras(a: Double, b: Double) -> Double {
    sqrt(a * a + b * b)
}

pythagoras(a: 3, b: 4)

func getUser() -> (firstName: String, lastName: String) {
    (firstName: "Taylor", lastName: "Swift")
}

let user = getUser()
let firstName = user.firstName
let lastName = user.lastName

print("Name: \(firstName) \(lastName)")


let (firstName2, _) = getUser()
print("Name: \(firstName2)")



enum PasswordError: Error {
    case short, obvious
}


func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {
        throw PasswordError.short
    }

    if password == "12345" {
        throw PasswordError.obvious
    }

    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
}


let string = "1234"

do {
    let result = try checkPassword(string)
    print("Password rating: \(result)")
} catch PasswordError.short {
    print("Please use a longer password.")
} catch PasswordError.obvious {
    print("I have the same combination on my luggage!")
} catch {
    print("There was an error.")
}


//Checkpoint 4

enum SqrtError: Error {
    case outOfBounds, noRoot
}

func sqrt(of num : Int) throws -> Int {
    
    if num < 1 || num > 10_000 {
        throw SqrtError.outOfBounds
    }
    
    for i in 1...num {
        if i * i == num {
            return i
        } else if i * i  > num {
            throw SqrtError.noRoot
        }
    }
    
    return 1
    
}

let sqrnum = 4
do {
    let ressqrt = try sqrt(of: sqrnum)
    print("Square root of \(sqrnum) is \(ressqrt)")
} catch SqrtError.noRoot {
    print("\(sqrnum) has no integer roots")
} catch SqrtError.outOfBounds {
    print("\(sqrnum) is out of bounds")
}
