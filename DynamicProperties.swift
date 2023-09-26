//
//  DynamicProperties.swift
//  SwitfCrashCourse
//
//  Created by Thore Brehmer on 26.09.23.
//

import Foundation


///----------DYNAMIC VAR
struct dynamicVar{
    //dynamic value (implicit getter)
    var cost: Int = 1000
    var currentProfit = 2021
    var monney: Int {
        return currentProfit - cost
    }
    
    typealias AnyReturnType = Bool
    //can have separated get and set part
    var computedProperty: AnyReturnType {
        get {
            //gets called when accessing the property
        }
        set(newValue) {
            //gets called when setting a new value to the property
        }
    }
    
}
