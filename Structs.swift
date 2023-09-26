//
//  Structs.swift
//  SwitfCrashCourse
//
//  Created by Thore Brehmer on 26.09.23.
//

import Foundation

///----------STRUCT (own datatype)
struct Album{
    //normal attributes
    let title: String
    
    //with default value
    var isReleased: Bool = false
    
    //with observer, getter and setter
    // 1. observers
    var _name: String = "Default Name" {
        didSet {
            print("value was changed")
        }
        willSet {
            print("value will be changed")
        }
    }
    // 2. setter, getter
    var name: String {
        get {
            return _name
        }
        set {
            _name = newValue
        }
    }

    
    //has default "memberwise initializer"
    //but can also be explicit
    //MARK: can have multiple (and this is often even really good) (zugriff: struct1.struct2) and same for classes
    init(_ title: String, isReleased: Bool, currentProfit: Int = 2021, f: (Int) -> Bool) {
        self.title = title
        self.isReleased = isReleased
        self._name = _name
    }
    
    //normal func
    func printSum(){
        print()
    }
    
    //attribute changing func -> has to be marked as mutating
    //MARK: mutating is so we know it will "copy on write"
    mutating func changeVariable(){
        isReleased.toggle()
    }
    
    //structs and enums can be nested
    struct Nested {}
    enum NestedEnum {}
    
}
