import UIKit

let driving = {
    print("I'm driving in my car")
}

driving()

print("------------------")

let driving2 = {(type: String) in
    print("I'm driving in my \(type)")
}

driving2("Tesla")


print("------------------")

let driving3 = { (place: String) -> String in
    return "I'm going to \(place)"
}

let message = driving3("Palo Alto")

print(message)


print("------------------")

func travel(action: () -> Void){
    print("I'm getting ready to go.")
    action()
    print("I've Arrived")
}

travel(action: driving)


print("------------------")

func travel2(action: () ->Void){
    print("I'm getting ready to go.")
    action()
    print("I Arrived")
}

travel2 {
    print("This is a test")
}

print("------------------")

func travel3(action: (String) -> Void){
    print("I'm getting ready to go.")
    action("London")
    print("I've arrived")
}
           
travel3{ (place: String) in
    print("I'm going to \(place) in my car")
}

print("------------------")

func travel4(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("Palo Alto")
    print(description)
    print("I arrived!")
}

travel4{(place: String) -> String in
    return "I'm going to \(place) in my car"
}


print("------------------")

func travel5(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("Palo Alto")
    print(description)
    print("I arrived!")
}

travel5{
    return "I'm going to \($0) in my car"
}

travel5{place in
    return "I'm going to \(place) in my car"
}

print("------------------")

func travel6(action: (String, Int) -> String){
    print("I'm getting ready to go.")
    let description = action("Plao Alto", 60)
    print(description)
    print("I've Arrived")
}

travel6{
    "I'm going to \($0) at \($1) miles per hour"
}
