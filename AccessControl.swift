//
//  AccessControl.swift
//  SwitfCrashCourse
//
//  Created by Thore Brehmer on 26.09.23.
//

import Foundation

///----------ACCESS-CONTROL
struct accessControl{
    //for VARS AND FUNCS
    private var onlyThisStruct: Int //
    private(set) var onlyThisStructCanSet: Int //get only
    fileprivate var onlyThisFile: Int //only for the file
    internal var onlyForSameModule //default
    public var everywhere: Int //everywhere
    
    //static -> callable without instant of struct
    static let callableWithoutInstance: Int = 5 //constant global
    static func staticFunc(){} //constant global
    private static let constValue = 5 //constant
}

//rule of thumb:
// alles versuchen private zu machen
// -> sonst private(set) = only ansehen,
// und erst dann public (kein access control)
//normally: 99% private, private(set), public is sufficient
