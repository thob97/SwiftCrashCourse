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

    //example 4 unwraping (true if con != nil)
    let optCon: Int?
    if let con = optCon { //true only if: con != nil (only purpose for if/guard let)
        print("\(con) is not nil")
    }
    guard let con = optCon else{
        print("\(con) is nil")
    }
        
    //example 5 unwraping multilpe (multiple if let can be combined with "," which acts like an &&) (with "," if let can even be combined with conditions) (no way to combine by || )
    if let con1 = optCon, let con2 = optCon, con1 > 3 && con2 > 5, let con3 = optCon {
        //do smth
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
