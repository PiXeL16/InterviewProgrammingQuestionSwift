import UIKit
import Foundation

/*:
 
 # Two Sums
 
 Given an array of integers, return indices of the two numbers such that they add up to a specific target.
 
 You may assume that each input would have exactly one solution, and you may not use the same element twice.
 *Example*:
 ```
 Given nums = [2, 7, 11, 15], target = 9,
 
 Because nums[0] + nums[1] = 2 + 7 = 9,
 return [0, 1].
 ```
 
*/


func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    
    var dict =  [Int: Int]()
    
    for (index, element) in nums.enumerated() {
        
        let key = target - element
        
        if let value = dict[key] {
            return [value, index]
        }
        dict[element] = index 
        
    }
    
    return [0]
}

let arrayToTest = [2, 7, 11, 15]
let target = 9

twoSum(arrayToTest, target)

