//
//  main.swift
//  BVNDay3
//
//  Created by Apple on 24/05/2021.
//

import Foundation

// Bai 1
print("Hello, World!")

func daysInMonth(month: Int, year: Int) -> Int {
    if month < 1 || month > 12 {
        print("so khong hop le")
        return 0
    }
    
    if month == 2  {
        if year%400 == 0 || (year%4 == 0 && year%100 != 0) {
            return 29
        } else {
            return 28
        }
    } else if month == 1 || month == 3 || month == 5 || month == 7 || month == 8 || month == 10 || month == 12 {
        return 31
    } else {
        return 30
    }
}
 
print(daysInMonth(month: 12, year: 2100))


// Bai 2
func sumOfDigits(x: Int) -> Int {
    let y: String = String(x)
    var sum = 0
    for digit in y {
        sum += Int(String(digit))!
    }
    return sum
}
 
print(sumOfDigits(x: 123456789))

// Bai 3
func cutStr(str: String) {
    if str.count > 10 {
    print(str.prefix(10) + "...")
    } else {
        print(str)
    }
}

cutStr(str: "Tôi học lớp 10")
cutStr(str: "Tôi học")

// Bai 4
func findMaxMin(bai4Array: [Int]) -> (Int, Int) {
    var max = bai4Array[0]
    var min = bai4Array[0]
    for i in bai4Array {
        if i > max {
            max = i
        }
        if i < min {
            min = i
        }
    }
    return (max, min)
}

var newArrays = [1,2,4,5,6,-7,-8,9]
print("max = \(findMaxMin(bai4Array: newArrays).0) min = \(findMaxMin(bai4Array: newArrays).1)")

// Bai 5
func findSecondMax(bai5Array: [Int]) -> (Int) {
    let max = findMaxMin(bai4Array: bai5Array).0
    var max2 = bai5Array[0]
    for i in bai5Array {
        if i < max && i > max2 {
            max2 = i
        }
    }
    return max2
}

print(findSecondMax(bai5Array: newArrays))


// Bai 6
let myStr: String = "Hello"
let reversedStr = String(myStr.reversed())
print(reversedStr)

// Bai 7
func printTriangle(h: Int) {
    for x in 1...h {
        for _ in 1...(h - x + 1) {
            print(" ", terminator: "")
        }
        for _ in 1...(x*2 - 1) {
            print("*", terminator: "")
        }
        print("")
    }
}
printTriangle(h: 5)

// Bai 8
// giam dan
func descendArray(bai8Array: [Int]) -> [Int] {
    var sortedArray = bai8Array
    let length: Int = sortedArray.count
    var a = 0
    for i in 0...(length - 1) {
        for k in i...(length - 1) {
            if sortedArray[k] > sortedArray[i] {
                a = sortedArray[k]
                sortedArray[k] = sortedArray[i]
                sortedArray[i] = a
            }
        }
    }
    return sortedArray
}

print(descendArray(bai8Array: newArrays))

// tang dan
func ascendArray(bai8Array: [Int]) -> [Int] {
    var sortedArray = bai8Array
    let length: Int = sortedArray.count
    var a = 0
    for i in 0...(length - 1) {
        for k in i...(length - 1) {
            if sortedArray[k] < sortedArray[i] {
                a = sortedArray[k]
                sortedArray[k] = sortedArray[i]
                sortedArray[i] = a
            }
        }
    }
    return sortedArray
}

print(ascendArray(bai8Array: newArrays))


// Bai 9
func secondMaxDigit(a: Int) -> Int {
    if a < 0 || a > 10000 {
        print("so khong hop le")
        return 0
    }
    
    let str = String(a)
    var max = Int(str.prefix(1))!
    var max2 = Int(str.prefix(1))!
    
    for i in str {
        if max < Int(String(i))! {
            max = Int(String(i))!
        }
    }
    for i in str {
        if (max2 < Int(String(i))!) && (max > Int(String(i))!) {
            max2 = Int(String(i))!
        }
    }
    return max2
}
print(secondMaxDigit(a: 5555))
print(secondMaxDigit(a: 1234))

// Bai 10
func printX(h: Int) {
    if h < 0 || h%2 == 0 {
        print("so khong hop le")
        return
    }
    
    
    let m = (h + 1)/2
    
    //in doan tren
    for i in 1...(m - 1) {
        for _ in 1...i {
        print(" ", terminator: "")
        }
        
        print("*", terminator: "")
        
        for _ in 1...(2*m - 2*i - 1) {
        print(" ", terminator: "")
        }
        print("*", terminator: "")
        
        print("")
    }
    
    
    //in dong giua
    for _ in 1...m {
    print(" ", terminator: "")
    }
    print("*")
    
    
    //in doan duoi
    for i in 1...(m - 1) {
        for _ in 1...(m - i) {
        print(" ", terminator: "")
        }
        
        print("*", terminator: "")
        
        for _ in 1...(2*i - 1) {
        print(" ", terminator: "")
        }
        print("*", terminator: "")
        
        print("")
    }
}

printX(h: 11)
