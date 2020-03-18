//
//  ProblemSet(DP).swift
//  SwiftAlgorithmsDataStructures
//
//  Created by Diego Espinosa on 2020-03-17.
//  Copyright © 2020 Diego Espinosa. All rights reserved.
//

import Foundation

func climbStairs(_ n: Int) -> Int {
    let num = n + 1
    var ways = Array(repeating: 0, count: num)
    ways[0] = 1
    ways[1] = 1
    ways[2] = 2
    ways[3] = 3
    
    for i in 3..<num{
        ways[i] = ways[i-2] + ways[i-1]
    }
    return ways[n]
}

func makeOne(_ n: Int) -> Int{
    var count = 0
    var num = n
    var temp = num
    repeat {
        while num % 3 == 0 {
            temp = temp / 3
            if temp % 3 == 0 || temp % 2 == 0 || temp == 1 {
                num = num / 3
                count += 1
            } else {
                num = num - 1
                count += 1
            }
        }
        while num % 2 == 0 {
            temp = temp / 2
            if temp % 3 == 0 || temp % 2 == 0 || temp == 1 {
                num = num / 2
                count += 1
            } else {
                num = num - 1
                count += 1
            }
        }
    } while num != 1 && num > 0
    return count
}

func Tiles(_ n: Int) -> Int {
    let num = n + 1
    var ways = Array(repeating: 0, count: num)
    ways[0] = 0
    ways[1] = 1
    ways[2] = 2
    ways[3] = 3
    
    for i in 3..<num{
        ways[i] = ways[i-2] + ways[i-1]
    }
    return ways[n]
}
