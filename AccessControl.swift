//
//  AccessControl.swift
//  SwitfCrashCourse
//
//  Created by Thore Brehmer on 26.09.23.
//

import Foundation

///----------ACCESS-CONTROLL
struct accessControl{
    //for VARS AND FUNCS
    private var onlyThisStruct: Int //
    private(set) var onlyThisStructCanSet: Int //get only
    fileprivate var onlyThisFile: Int //only for the file
    public var everywhere: Int //default
    
    //static -> callable without instant of struct
    static let callableWithoutInstance: Int = 5 //constant global
    static func staticFunc(){} //constant global
    private static let constValue = 5 //constant
}
