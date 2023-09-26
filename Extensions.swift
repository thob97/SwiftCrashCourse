//
//  Extensions.swift
//  SwitfCrashCourse
//
//  Created by Thore Brehmer on 26.09.23.
//

import Foundation

///----------EXTENSIONS (datenstrukturen/klassen/structs erweitern)
//example 1: on datatype String
extension String {
    //example: for a shorter version of trimmingCharacters
    func trimmed () -> String {
        return self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    //for inplace (instead of retuning a string) -> needs mutating
    mutating func trim(){
        self = self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    //example: new dynamic variable
    var lines: [String] {
        self.components(separatedBy: .newlines)
    }
}

//example 2: on protocoll (for lists, strings, dics)
extension Collection {
    var isNotEmpty: Bool {
        return !isEmpty
    }
}
func test(){
    [1].isNotEmpty
    "test".isNotEmpty
    ["key":"value"].isNotEmpty
}
