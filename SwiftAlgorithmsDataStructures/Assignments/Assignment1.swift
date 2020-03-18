import Foundation

var nums: [Int] = []
var result = 0
var pos = 0
var str = ""
var sign = 0

func mathExpression(theString: String){
    let operation = Array(theString)

    
    for i in 0..<operation.count{
        if(operation[i].isNumber){
            str = String(operation[i])
            nums.append(Int(str)!)
        }
    }
        
        
    for index in operation{
        if (index == "+"){
            sign = 1
            break
        }
        else if(index == "*"){
            sign = 2
            break
        }
    }
    
    switch sign {
    case 0:
        result = result + ( nums[0])
    case 1:
        result = result + (nums[0] + nums[1] )
    case 2:
        result = result + (nums[0] * nums[1] )
    default:
        print("")
    }
    
    sign = 0
    nums.removeAll()
    print(result)
    
}

    
