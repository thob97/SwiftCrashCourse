//
//  Errors.swift
//  SwitfCrashCourse
//
//  Created by Thore Brehmer on 26.09.23.
//

import Foundation
import SwiftUI

//Takeaways:
//1. custom errors can be created with enums and error protocols
//2. there are predefined errors
//3. try? can be optional -> will return nil on error throw instead of going to catch clausal
//4. "let error" can be left out and be implicit
//5. multiple catch blocks are possible

///----------ERRORS
struct errors{
    //create a custom error, has to implement swift standard Error
    enum CustomError: Error{
        case custom1, custom2
    }
    
    //example func which throws customError
    func checkSmth() throws -> String {
        let rand: Int = Int.random(in: 0...100)
        
        if rand < 50{
            throw CustomError.custom1
        }
        else{
            return "Success"
        }
    }
    
    //(do) try catch clausal (needs the do)
    do {
        let res = try checkSmth()
        print(res)
    } catch let error { //
        
    }
}
