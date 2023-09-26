//
//  Functions.swift
//  SwitfCrashCourse
//
//  Created by Thore Brehmer on 26.09.23.
//

import Foundation

///----------FUNCTIONS
struct functions{
    //ohne rückgabe
    func voidFunc(input: String){
        print(input)
    }
    
    //mit rückgabe
    func intCallback(a: Int, b: Int) -> Int {
        return a+b
    }
    
    //anonymous + extern/intern + default parameters
    func test(_ a: Int, extern intern: Int, defaultV: Int = 0) {
        print (a + intern + defaultV)
    }
    test(1, extern: 2)
    
    //mit function als eingabe parameter
    func functionalPrg(f: (String) -> String) -> String {
        //strips return of f
        return f("do smth").trimmed()
    }
    
    
    //named tupel rückgabe
    func retMultiValues1() -> (name: String, age: Int, isStudent: Bool){
        //1. option
        //return ("Thore", 26, true)
        //2. option
        return (name : "Thore", age : 26, isStudent : true)
    }
    
    //unnamed tuper rückgabe
    func retMulitValues2() -> (String, Int, Bool){
        return ("Thore", 26, true)
    }
    
    //get values from tupel func
    //1. option
    let (name, age, _) = retMultiValues1()
    //2. option
    let user = retMultiValues1()
    //print
    print(name, age, user.isStudent)
    print(user.0, user.age, user.2)
}

/*
 parameter von functionen sind let constants / copien -> functionen welche structs benötigen, erhalten lediglich eine let copy von dem struct -> struct kann also nicht angepasst werden!, muss über anderen weg geschehen (zugriff auf locales echtes struct)
 */
