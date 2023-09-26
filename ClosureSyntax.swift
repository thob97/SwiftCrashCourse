//
//  ClosureSyntax.swift
//  SwitfCrashCourse
//
//  Created by Thore Brehmer on 26.09.23.
//

import Foundation

///----------CLOSURE SYNTAX
struct closureSyntax{
    let list = [0,1,2,3,4]
    //longest versions
    let longestVerison = list.filter({ (ele) -> Bool in
        return ele == 1
    })
    //type inference
    let mediumVerison = list.filter({ ele in
        ele == 1
    })
    //trailing closure syntax
    let trailingClosure = list.filter{ ele in
        ele == 1
    }
    //with closure arguments
    let shortestVersion = list.filter{$0 == 1}
}
