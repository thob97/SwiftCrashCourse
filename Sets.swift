//
//  Sets.swift
//  SwitfCrashCourse
//
//  Created by Thore Brehmer on 26.09.23.
//

import Foundation

///----------SETS
struct set{
    ///wie hashmaps mit autokeys -> keine reihenfolge/indexes aber dafür O(1) im add, del, und lookup
    var set: Set<Int> = Set([1,2,3])
    //add
    set.insert(1)
    //remove
    set.remove(2)
    //containes
    _ = set.contains(5)
    //can do most other funcs that a list can do
    
    //math
    let set1: Set<Int> = [1, 2, 3, 4]
    let set2: Set<Int> = [3, 4, 5, 6]
    let unionSet = set1.union(set2) // [1, 2, 3, 4, 5, 6]
    let intersectionSet = set1.intersection(set2) // [3, 4]
    let differenceSet = set1.subtracting(set2) // [1, 2]
}
