/*:
 # Remove Element
 Given an array and a value, remove all instances of that value in place and return the new length.
 
 Do not allocate extra space for another array, you must do this in place with constant memory.
 
 The order of elements can be changed. It doesn't matter what you leave beyond the new length.
 *Example:*
 
 ```
 Given input array nums = [3,2,2,3], val = 3
 
 Your function should return length = 2, with the first two elements of nums being 2.
 ```
 
 */


func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
    
    nums = nums.filter {$0 != val}
    
    return nums.count
}

func removeElement2(_ nums: inout [Int], _ val: Int) -> Int {
    
    var secondIndex = 0
    
    for (index, element) in nums.enumerated() {
        if element != val {
            nums[secondIndex] = element
            secondIndex =  secondIndex + 1
        }
    }
    
    return secondIndex
}

var array: [Int] = [3,2,2,3]
removeElement2(&array, 3)
array
