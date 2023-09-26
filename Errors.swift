//
//  Errors.swift
//  SwitfCrashCourse
//
//  Created by Thore Brehmer on 26.09.23.
//

import Foundation

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
    
    //(do) try catch clausle (needs the do)
    do {
        let res = try checkSmth()
        print(res)
    } catch CustomError.custom1 {
        print("Error 1")
    } catch {
        print("All other possible errors")
    }
}
