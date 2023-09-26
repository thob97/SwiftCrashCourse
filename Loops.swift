//
//  Loops.swift
//  SwitfCrashCourse
//
//  Created by Thore Brehmer on 26.09.23.
//

import Foundation

///----------LOOPS
struct loops{
    //through a list
    let list = [1,2,3,4]
    for ele in list {
        print("Every ele from list \(ele)")
    }
    
    //1. range
    for i in 0...12 {
        print("From 0 to 12 \(i)")
    }
    //2. range
    for i in 0..<12 {
        print("From 0 to 11 \(i)")
    }
    //3. range reversed
    for i in (0..<list.count).reversed() {
        print("From list.count to 0")
    }
    
    //while range
    var count = 0
    while count > 10 {
        print("from 0 to 9")
        count += 1
    }
    
    //continue and break
    let list2 = [".jpg", ".txt", ".error"]
    for ele in list2 {
        if ele.hasSuffix(".jpg"){
            print("continue to next loop iteration")
            continue
        } else if ele.hasPrefix(".txt"){
            print("do something")
        } else {
            print("error break/ exit the loop")
            break
        }
    }
    
    //reversed enumerated
    for (i, ele) in list.enumerated().reversed(){
        //do smth
    }
    
    //while is unwrapable
    var may_num: Int? = nil
    while let num = may_num {
        //do smth with unwrapped num
    }
    
    //forEach loop
    [0,1,0].forEach { _ in
        //doSmth
    }
}
