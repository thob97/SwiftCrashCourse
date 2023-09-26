//
//  Conditions.swift
//  SwitfCrashCourse
//
//  Created by Thore Brehmer on 26.09.23.
//

import Foundation

///----------CONDITIONS
struct conditions{
    let con = 1
    
    ///example 1
    if con == 1 {
        
    } else if con < 1 {
        
    } else { //con > 1
        
    }
    
    ///example 2 with "and" + "or"
    if (con > 1 && con == 1) || con < 1 {
        
    }
    
    ///example 3 Ternary Conditional Operator
    let _ = con == 1 ? "True" : "False"
    
    guard con == 1 else {
        print("This will print if con!=1")
    }

    //example 4 unwraping
    let optCon: Int?
    if let con = optCon {
        print("\(con) is not nil")
    }
    guard let con = optCon else{
        print("\(con) is nil")
    }
    
}

struct switchConditional{
    //example attributes
    enum Weather{
        case sun, rain, wind
    }
    var weather: Weather = .sun
    
    //switch statement
    switch weather {
    case.sun:
        print()
    case.rain:
        print()
    default:
        print()
    }
}
