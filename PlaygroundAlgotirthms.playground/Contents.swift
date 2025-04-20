import UIKit

var greeting = "Hello, playground"

// Given two arrays, create a function that let's a user know
// wether these two arrays contain any common items

let arrayA = ["a", "b", "c", "d", "z", "t"]
let arrayB = ["e", "f", "g", "h", "d", "t"]


func takesmoreTimeLessSpace(arrayA: [String], arrayB: [String]) -> Bool {
    let before = Date()
    for i in 0..<arrayA.count {
        for b in 0..<arrayB.count {
            if arrayA[i] == arrayB[b] {
                print("\(arrayA[i]) is in \(arrayB)")
                let after = Date()
                let component = Calendar.current.dateComponents([.nanosecond], from: before, to: after)
                let miliseconds: Double = Double(component.nanosecond! / 1000000)
                print("Time took takesmoreTimeLessSpace: \(miliseconds)")
                return true
            }
        }
    }
    let after = Date()
    let component = Calendar.current.dateComponents([.nanosecond], from: before, to: after)
    let miliseconds: Double = Double(component.nanosecond! / 1000000)
    print("Time took takesmoreTimeLessSpace: \(miliseconds)")
    return false
}

func takesMoreSpaceLessTime(arrayA: [String], arrayB: [String]) -> Bool {
    let before = Date()
    var hashSet: Set<String> = []
    for item in arrayA {
        hashSet.insert(item)
    }
    for item in arrayB {
        if hashSet.contains(item) {
            print("\(item) is in \(arrayA)")
            let after = Date()
            let component = Calendar.current.dateComponents([.nanosecond], from: before, to: after)
            let miliseconds: Double = Double(component.nanosecond! / 1000000)
            print("Time took takesMoreSpaceLessTime: \(miliseconds)")
            return true
        }
    }
    let after = Date()
    let component = Calendar.current.dateComponents([.nanosecond], from: before, to: after)
    let miliseconds: Double = Double(component.nanosecond! / 1000000)
    print("Time took takesMoreSpaceLessTime: \(miliseconds)")
    return false
}

takesmoreTimeLessSpace(arrayA: arrayA, arrayB: arrayB)
takesMoreSpaceLessTime(arrayA: arrayA, arrayB: arrayB)
