//
//  StructsVsClasses.swift
//  SwitfCrashCourse
//
//  Created by Thore Brehmer on 26.09.23.
//

import Foundation

///----------STRUCT-VS-CLASSES
//struct: value type VS class: reference type
//MARK: 1. Classes share data when copied (pointer) /// while struct do not !!! -> there can only one Referenz / ("Pointer") to a Struct !!!
//MARK: ->(structs are copied on write)
struct DoNotShare {
    var id = "0"
}
func doNotShareTest(){
    var struct1 = DoNotShare()
    var struct2 = struct1
    struct2.id = "1"
    print(struct1.id, struct2.id) //-> 0, 1
}
class DoShare {
    var id = "0"
}
func doShareTest(){
    var class1 = DoShare()
    var class2 = class1
    class2.id = "1"
    print(class1.id, class2.id) //-> 1, 1
}


//MARK: 2. Classes do not need mutating keyword when changing a var -> mutating is so we know it will "copy on write"
//MARK: 3. Classes can be constant while their attributes are variable /// while structs have to be variable if their attributes need to be variable (const pointer, vs const value)
func structVsClass(){
    
    class TestClass{
        var id = 0
    }

    let testClass = TestClass()
    testClass.id = 1
    print(testClass.id) //-> 1

    class TestStruct{
        var id = 0
    }

    let testStruct = TestStruct()
    testStruct.id = 1 //-> error because testStruct is constant
}

//MARK: 4. Structuren können zwar von protocollen erben, aber nicht von classen und nicht an andere vererben
struct ParentStruct {}
// struct ChildStruct: ParentStruct {} -> error

//MARK: -> 99% in swift are structs (as they are more efficient and its easier to test, as there are no pointers for struct) -> only ViewModel are classes, because multiple views want a poitner to it
//MARK: both can be used to model, but in addition structs can be used to display views in swiftUI
