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
    var const: Int {get} // without {get} or {get set} -> error
    var dynamicComputed: Int {get} // get -> means: the property needs at least to be get-able (everything)
    var variable: Int { get set } // get set -> means: it also needs to be set-able
    
    //funcs
    func inherit1(_ variable: Int) -> String
    func smth(outer inner: String) -> Void
    
    //can be used for "dont cares"
    associatedtype DontCare
    mutating func change(DontCare) -> () //mutating can also be marked
}

struct Car<T>: Interface {
    let const: Int
    var dynamicComputed: Int {.random(in: 0...10) - const}
    var variable: Int // let would leat to error -> var -> because protocol: {get >>set<<} //would also be error to set to computed property without a set{} part
    let childVar: Int = 10
    
    func inherit1(_ variable: Int) -> String {
        return ""
    }
    
    func smth(outer inner: String) {
        return
    }
    
    func childFunc(){}
    
    //don't care
    typealias DontCare = T
    mutating func change(_: T) {}

}
