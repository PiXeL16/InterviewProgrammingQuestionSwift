/*:
 
 # Single Number III
 
 Given an array of numbers nums, in which exactly two elements appear only once and all the other elements appear exactly twice. Find the two elements that appear only once.
 
 For example:
 
 `Given nums = [1, 2, 1, 3, 2, 5], return [3, 5].`
 
 
*/



func singleNumber(_ nums: [Int]) -> [Int] {
    
    var numbers = [Int: Int]()
    
    for value in nums {
        
        if let _ = numbers[value] {
            numbers[value] = nil
        }
        else {
            numbers[value] = 1
        }
    }
    
    return [Int](numbers.keys)
    
}


singleNumber([1, 2, 1, 3, 2, 5])


