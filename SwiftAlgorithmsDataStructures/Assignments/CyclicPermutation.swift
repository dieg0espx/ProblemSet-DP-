//
//  CyclicPermutation.swift
//  SwiftAlgorithmsDataStructures
//
//  Created by Diego Espinosa on 2020-03-02.
//  Copyright © 2020 Diego Espinosa. All rights reserved.
//

import Foundation

func cyclicPermutation(){
    let n = Int(readLine()!)!
    for _ in 0..<n{
        let m = Int(readLine()!)!
        
        var a = UF(m)
        let num = readLine()!.split(separator:" ")
        
        for i in 0..<m{
            let u = Int(num[i])!-1
            a.union(i, u)
        }
        print(a.count)
    }
}

