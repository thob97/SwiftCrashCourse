//
//  Classes.swift
//  SwitfCrashCourse
//
//  Created by Thore Brehmer on 26.09.23.
//

import Foundation

///----------CLASSES
class ParentClass {
    let parent_variable: Int
    
    //classes always need to have an explizid constructor
    //can have multiple
    init(parent_variable: Int) {
        self.parent_variable = parent_variable
    }
    
    //just like structs classes can have deinits
    deinit{
        print("Destroyed")
    }
    
    func willBeOverwritten(){}
    
}

class ChildClass: ParentClass {
    let child_variable: Int
    
    //inherits constructor from parent
    // if it needs it own constructor call super.init() at the end (parents->constructor)
    init(parent_variable: Int, child_variable: Int){
        self.child_variable = child_variable
        super.init(parent_variable: parent_variable)
    }
    
    //to override a func
    override func willBeOverwritten() {}
}
//comparing objects
let object1 = ParentClass(parent_variable: 0)
let object2 = object1
let isSameInstanze: Bool = object1 === object2
//usefull for stonring in arrays, hashmaps, sets
let isSameInstanze2: Bool = ObjectIdentifier(object1) == ObjectIdentifier(object2)
