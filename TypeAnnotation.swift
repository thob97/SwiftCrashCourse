//
//  TypeAnnotation.swift
//  SwitfCrashCourse
//
//  Created by Thore Brehmer on 26.09.23.
//

import Foundation

///----------TYPE-ANNOTATION
struct typeAnnotation{
    var _: Double = 0
    let _: String = "ab"
    let _: Character = "a"
    let _: Bool = true
    let _: Array<String> = ["Test", "Blue"]
    let _: [String] = ["Test", "Blue"]
    let _: Dictionary<String, String> = ["key":"value"]
    let _: [String: String] = ["key":"value"]
    let _: Set<Int> = Set([1,2,3,4])
    //one line multi annotation
    let (var1, var2, var3): (Int, Double, String) = (1, 2.5, "Hey")
    let tupel_unpacking = [(1,2)]
    let (i, j) = tupel_unpacking.first!
    
    //you can cast types on other types
    let _: [Int] = Array(Set([1])) //Set<Int> to Array<Int>
    
}
