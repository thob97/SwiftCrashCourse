//
//  AnonymousFunctions.swift
//  SwitfCrashCourse
//
//  Created by Thore Brehmer on 26.09.23.
//

import Foundation

///----------ANONYMOUS FUNCTIONS
/// (similar to dynamic variables, but for anonymous function)
/// ///anonymous funcs are pretty useless -> closure syntax is important
struct AnonymousFunctions{
    //without paras and implicit return
    var closure = {
        print("hey")
    }
    closure() //is called like a function
    
    //without para but deklared return
    var ret: () -> Int = {
        return 5
    }
    let _: Int = ret()
    
    //with paras and declared return
    var ver: (String) -> Void = { input in
        //do smth
    }
    ver("")
}
