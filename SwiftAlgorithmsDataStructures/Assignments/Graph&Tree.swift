//
//  Graph&Tree.swift
//  SwiftAlgorithmsDataStructures
//
//  Created by Diego Espinosa on 2020-02-27.
//  Copyright © 2020 Diego Espinosa. All rights reserved.
//

import Foundation

func numOfSteps(){
    
    let read1 = readLine()!.split(separator: " ")
    let n = Int(read1[0])!
    
    let toFind = readLine()!.split(separator: " ")
    let find1 = Int(toFind[0])
    let find2 = Int(toFind[1])
    //let find3 = Int(toFind[2])
    //let find4 = Int(toFind[3])
    
    
    //Indexing to array
    var whatIHave = "0 "
    var myArray = Array(repeating: "", count: n-1)
    myArray.insert("0", at: 0)
    
    for _ in 0..<n-1{
        let nums = readLine()!.split(separator: " ")
        let num1 = String(nums[0])
        let num2 = String(nums[1])
        
        if !whatIHave.contains(num2){
            whatIHave.append(num2 + " ")
            myArray[Int(num1)!] = "\(myArray[Int(num1)!])\(num2)"
        }
        if !whatIHave.contains(num1){
            whatIHave.append(num1 + " ")
            myArray[Int(num2)!] = "\(myArray[Int(num2)!])\(num1)"
        }
    }
    print(myArray)
    
    
    //Finding
    var visited = "\(find1!)"
    var now = String(find1!)
    var done = false
    
    while !done {
        for i in 0..<myArray.count{
            if myArray[i].contains(now){
                visited.append(String(i))
                now = String(i)
                if myArray[i].contains(String(find2!)){
                    visited.append(String(find2!))
                    print(visited)
                    print(visited.count - 1 )
                    done = true
                    break
                }
            }
        }
    }
}





