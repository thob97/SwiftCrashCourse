//
//  Dictionaries.swift
//  SwitfCrashCourse
//
//  Created by Thore Brehmer on 26.09.23.
//

import Foundation

///----------DICTIONARIES
struct hashm{
    //declar
    var hashm: [AnyHashable : Any] = [
        "key1": 1,
        "1" : 2,
        2.0 : "test"
    ]
    
    //get keys
    var listOfKeys = hashm.keys
    //get values
    var listOfValues = hashm.values
    //zugriff / "containes" / nil if key does not exist
    var ele = hashm["key1"]
    //add
    hashm["new"] = 5
    //default if key does not exist yet
    var map: [String: Int] = [:]
    map["new",default: 0] += 1
    //remove
    hashm.removeValue(forKey: "new")
    hashm.removeAll()
}
