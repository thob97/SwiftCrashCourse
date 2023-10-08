//
//  DynamicProperties.swift
//  SwitfCrashCourse
//
//  Created by Thore Brehmer on 26.09.23.
//

import Foundation

//1. only by detour: can somewhat have default value + "stored" value (otherwise only dynamic)

///----------DYNAMIC VAR
struct dynamicVar{
    //dynamic value (implicit getter)
    var cost: Int = 1000
    var currentProfit = 2021
    var monney: Int {
        return currentProfit - cost
    }
    
    //can have separated get and set part
    var defaultValue: Int = 0 //indirect default value + stored value
    var computedProperty: Int {
        get { //does not get a value like set
            //gets called when accessing the property
            return defaultValue
            
        }
        set(newValue) {
            //gets called when setting a new value to the property
            //newValue default name for the current given value to the property
            defaultValue += (newValue*2)
        }
    }
    
    print(computedProperty) // -> 0
    computedProperty = 5
    let x = computedProperty // -> 10
    print(computedProperty)
    
}
