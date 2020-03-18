import Foundation

func findTheLCA(){
    
    let n = Int(readLine()!)!
    var whatIHave = "1 "
    var myArray = Array(repeating: "", count: n)
    
    for _ in 0..<n-1 {
        let nums = readLine()!.split(separator: " ")
        let num1 = String(nums[0])
        let num2 = String(nums[1])
        
        if !whatIHave.contains(num2){
            whatIHave.append(num2 + " ")
            myArray[Int(num1)!-1] = "\(myArray[Int(num1)!-1])\(num2)"
        }
        if !whatIHave.contains(num1){
            whatIHave.append(num1 + " ")
            myArray[Int(num2)!-1] = "\(myArray[Int(num2)!-1])\(num1)"
        }
    }
    //print(myArray)
    let n_answers = Int(readLine()!)!
    print()
    for _ in 0..<n_answers{
        let nums = readLine()!.split(separator: " ")
        let c1 = String(nums[0])
        let c2 = String(nums[1])
        var check1 = Int(c1)!
        var check2 = Int(c2)!
        
        //var check1 = 6
        //var check2 = 11
        var done = false
        var parentsA:[Int] = [check1]
        var parentsB:[Int] = [check2]
        
        // Adding A parents
        while !done {
            for i in 0..<n{
                if myArray[i].contains(String(check1)){
                    parentsA.append(i+1)
                    check1 = i + 1
                    break
                }
            }
            if check1 == 1 { done = true }
        }
        done = false
        
        // Adding B parents
        while !done {
            for i in 0..<n{
                if myArray[i].contains(String(check2)){
                    parentsB.append(i+1)
                    check2 = i + 1
                    break
                }
            }
            if check2 == 1 { done = true }
        }
        done = false
        //print(parentsA)
        //print(parentsB)
        for i in 0..<parentsA.count{
            let checking = parentsA[i]
            for i in 0..<parentsB.count{
                if parentsB[i] == checking && done == false{
                    print(parentsB[i])
                    done = true
                }
            }
        }
    }
}





