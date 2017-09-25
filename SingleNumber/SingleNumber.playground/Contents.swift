/*:
 # Single number
 Given an array of integers, every element appears twice except for one. Find that single one.
*/

func singleNumber(_ nums: [Int]) -> Int {
    
    var single = 0
    
    for num in nums {
        single = single ^ num
    }
    
    return single
   
}

singleNumber([2,2,3,3,4,5,4,5,6,7,6,8,8])
