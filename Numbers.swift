//
//  Numbers.swift
//  SwitfCrashCourse
//
//  Created by Thore Brehmer on 26.09.23.
//

import Foundation

///----------NUMBERS
struct integerFunctions{
    var random = Int.random(in: 1...100)
    var _ = -Double.infinity //inf
    var _ = Int.min //min
    let _ = 10.isMultiple(of: 2) // -> true ::: 10%2 == 0
    //short +, *, /, -
    random += 2 //2+random
    random *= 2 // 2*random
    random /= 2 //2:random
    random -= 2 //2-random
}

import SwiftUI //for pow and sqrt
struct floatingPoint{
    var double = 2.1
    double = 2.0
    double += 1.0
    var int = 1
    _ = pow(double, 2)
    _ = sqrt(double)
    //var error = double + int //-> two different types (double and int) can not be used together
}
