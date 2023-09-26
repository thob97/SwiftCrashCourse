//
//  Strings.swift
//  SwitfCrashCourse
//
//  Created by Thore Brehmer on 26.09.23.
//

import Foundation

///----------STRINGS
let normal = "hey"
let quote = "He said \"what?\".\nNext line"
let multiline = """
This is a multi line
STRING
And also display the value of the variable a:\(a)
"""

struct stringFunctions{
    let _ = multiline.count //-> num of chars
    let _ = multiline.isEmpty //-> bool
    let _ = multiline.lowercased()// string in uppercase
    let _ = multiline.uppercased()// string in lowercase
    let _ = multiline.index(multiline.startIndex, offsetBy: 0) // multiline[0]
    let _ = multiline.index(multiline.startIndex, offsetBy: -1) // multiline[-1]
    let _ = multiline.components(separatedBy: " ") //string.split(" ")
    let _ = multiline.trimmingCharacters(in: .whitespaces)
    let _: [Character] = Array(normal) // form string to list: ["h", "e", "y"]
    let _: String = ["h","e","y"].joined(separator: "") // "hey"
}

