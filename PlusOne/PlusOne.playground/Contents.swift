
func plusOne(_ digits: [Int]) -> [Int] {
    
    var mutableArray = digits
    var lastDigit = mutableArray.last!
    
    if (lastDigit == 9) {
        
        // Inverse the array to check for 9
        var reversedArray: [Int] = mutableArray.reversed()
        var index = 0
        while (index < reversedArray.count && reversedArray[index] == 9) {
            reversedArray[index] = 0
            index = index + 1
        }
        // check if we need to add one more digit
        if(index == reversedArray.count) {
            reversedArray.append(1)
        } else {
            // Plus one to the index
            var plusOneValue = reversedArray[index]
            plusOneValue = plusOneValue + 1
            reversedArray[index] = plusOneValue
        }
        
        mutableArray = reversedArray.reversed()
        
    } else {
        lastDigit = lastDigit + 1
        mutableArray[mutableArray.count - 1] = lastDigit
    }
    
    return mutableArray
}

plusOne([9,9,9,9])
