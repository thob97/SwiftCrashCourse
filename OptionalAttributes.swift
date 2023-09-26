//
//  OptionalAttributes.swift
//  SwitfCrashCourse
//
//  Created by Thore Brehmer on 26.09.23.
//

import Foundation

///----------OPTIONAL-ATTRIBUTES
func optionals(num : Int?){
    //example
    let dict: [String: String] = ["key": "value"]
    let couldBeNil: String? = dict["key1024"]
    
    //1. unforced unwrapping: using if
    if let num = num {
        print("Num is not nil")
    }
    
    //2. unforced unwrapping: using guard
    guard let num = num else {
        print("Num is nil")
        return //requires a return (in case guard catches/failes)
    }
    print("Num is not nil")
    
    //3. unforced unwrapping: using (nil coalescing operator) default value
    let num2: Int = num ?? 0
    
    //4. forced unwrapping
    var nilNull: Int?
    let num3: Int = nilNull!
    
    //optional chaining: chain will only run if not nil
    let mayBeEmpty: [String] = []
    let mayBeNil: String? = mayBeEmpty.randomElement()?.uppercased()
    print(mayBeNil ?? "string was nill") //-> (no error!)
}
