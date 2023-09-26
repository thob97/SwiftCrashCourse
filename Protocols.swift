//
//  Protocols.swift
//  SwitfCrashCourse
//
//  Created by Thore Brehmer on 26.09.23.
//

import Foundation

///----------PROTOCOL
protocol Interface {
    //attributes
    var const: Int {get} // without {get} or {get set} -> error //let -> error, {get} == let
    var dynamicComputed: Int {get} // get -> means its a const or dynamic computed
    var variable: Int { get set } // get set -> means it will be a var
    
    //funcs
    func inherit1(_ variable: Int) -> String
    func smth(outer inner: String) -> Void
}

struct Car: Interface {
    let const: Int
    var dynamicComputed: Int {.random(in: 0...10) - const}
    var variable: Int // let would leat to error -> var -> because protocol: {get >>set<<}
    let childVar: Int = 10
    
    func inherit1(_ variable: Int) -> String {
        return ""
    }
    
    func smth(outer inner: String) {
        return
    }
    
    func childFunc(){}
}
