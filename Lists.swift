//
//  Lists.swift
//  SwitfCrashCourse
//
//  Created by Thore Brehmer on 26.09.23.
//

import Foundation

///----------LISTS
struct listFunctions{
    //examples
    var strings = ["1", "zwei", "3.0"]
    var ints = [1,2,3]
    var doubles = [1.0,2.0,3.0]
    
    
    
    //-----Zugriff-----
    var _ = strings[0] //first ele
    var _ = strings.first
    var _ = strings[strings.count - 1] //last ele // strings[-1] wirft einen fehler
    var _ = strings.last
    
    
    
    //-----Basics-----
    var bool = ints.isEmpty // ints.count == 0
    var num = ints.count

    
    
    //-----ADD-----
    ints.append(4)
    ints.append(contentsOf: [5,6])
    ints.insert(2, at: 0)
    ints.insert(contentsOf: [-2,-1], at: 0)
    
    
    
    //-----SWAP-----
    (strings[0], strings[1]) = (strings[1], strings[0])
    strings.swapAt(0, 5) //same as ^
    strings[0] = strings[5] //single swap
    
    
    
    //-----Remove-----
    ints.remove(at: 1)
    ints.remove(atOffsets: [1,2,5])
    ints.removeAll { num in
        num > 5
    }
    ints.removeLast(5)
    ints.removeFirst(10)
    let _ = ints.popLast()

    
    
    //-----Generators-----
    var generator = [Int](repeating: 2, count: 3) // [2,2,2]
    generator = generator.map {$0 * 2} // [4,8,16]
    generator = generator.filter {$0 % 16 != 0} // [4,8]
    var _ = [[Int]](repeating: [Int](repeating: -1, count: 0), count: 0)
    
    
    //-----Conditional-Search-----
    var _ = ints.lastIndex { ele in
        ele == 1
    }
    var _ = ints.firstIndex { ele in
        ele == 1
    }
    
    
    
    //-----Contains-----
    bool = ints.contains { ele in
        ele == 1
    }
    bool = ints.contains([2,3])
    
    
    
    //-----Slicing-----
    //besser
    var slicedList = Array(ints[..<2]) // ints[2:]
    slicedList = Array(ints[2...]) // ints[:2]
    //alternaive (schlechter)
    slicedList = ints.dropLast(ints.count - 2) // ints[:2]
    slicedList = Array(ints.dropFirst(2)) // ints[2:]
    slicedList = Array(ints.drop { ele in
        ele != 3
    })
    
    
    
    //----sum-----
    let sum = ints.reduce(0, +)
    let custom_sum = ints.reduce(into: 0) { res, ele in
        res += ele
    }
    
    
    //----equals-----
    bool = ints.elementsEqual([1,2,0]) // -> false ::: ints == [1,2,0]
    bool = ints == slicedList
    
    
    
    //-----Loops-----
    ints.forEach { ele in
        print(ele)
    }
    for ele in ints{
        print(ele)
    }
    var newList = ints.map { ele in
        return "ele"
    }
    
    
    
    //-----Max/Min-----
    var ele = ints.max()
    ele = ints.min()
    //custom max & min. usefull for objects or other non maxable types
    var string = strings.max { string1, string2 in
        string1.count < string2.count
    }
    string = strings.min { string1, string2 in
        string1.count < string2.count
    }
    
    
    
    //-----Sorting-----
    //inplace
    ints.sort()
    ints.sort { num1, num2 in
        num1<num2
    }
    //outplace
    ints.sorted()
    ints.sorted { num1, num2 in
        num1<num2
    }
    
    
    
    //-----OTHER-----
    ints.shuffle()
    ints.shuffled()
    ints.randomElement()
    ints.reverse()
}
