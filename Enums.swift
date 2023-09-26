//
//  Enums.swift
//  SwitfCrashCourse
//
//  Created by Thore Brehmer on 26.09.23.
//

import Foundation

///----------ENUMS
struct enums{
    
    enum Weekday{
        case zero
        case monday, tuesday, wendsday //can be multi cases in one line
        case drink(size: DrinkSize) //can have associated data
        case burger(String, prevIsUnnamed: Int) //can have multiple associated data + unnamed data
        
        //can not have stored properties //let x: Int = 5 -> Error
        var canHaveComputedProperties: Int {5}
        func canHaveMethods(){} //useful for "switching" over self
    }
    
    for _ in DrinkSize.allCases {} //enums can be iterated over with protocol: CaseIterable (+ they can not have associated data)
    enum DrinkSize: CaseIterable{
        case large
        case medium
    }
    
    //usually checked with a switch case
    var item = DrinkSize.large
    switch item {
        case .large: print("one large drink")
        case .medium: print("one medium drink")
        default: print("all other cases")
    }
    
    //switch with associated data
    var item2 = Weekday.drink(size: .medium)
    switch item2 {
        case .drink(let drinkSize): print("\(drinkSize)")
        case .burger(let string, let num): print("\(string), \(num)") //associated data is used with "let someName"
        default: print()
    }
    
    var item3 = Weekday.burger("", prevIsUnnamed: 5)
    item3.canHaveComputedProperties //computedProperties can be called
    item3.canHaveMethods() //methods can be called
    //but associated data can not be accessed -> only in switch (or if case ... = ... {})
    
}
