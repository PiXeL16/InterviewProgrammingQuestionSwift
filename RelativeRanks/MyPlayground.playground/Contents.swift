/*: Playground - noun: a place where people can play
 
 # Relative Ranks
 
 Given scores of N athletes, find their relative ranks and the people with the top three highest scores, who will be awarded medals: "Gold Medal", "Silver Medal" and "Bronze Medal".
 
 *Example 1:*
 ```
 Input: [5, 4, 3, 2, 1]
 Output: ["Gold Medal", "Silver Medal", "Bronze Medal", "4", "5"]
 Explanation: The first three athletes got the top three highest scores, so they got "Gold Medal", "Silver Medal" and "Bronze Medal".
 For the left two athletes, you just need to output their relative ranks according to their scores.
 ```
 
 *Note:*
 1. N is a positive integer and won't exceed 10,000.
 2. All the scores of athletes are guaranteed to be unique.

 */

import UIKit

var str = "Hello, playground"


func findRelativeRanks(_ nums: [Int]) -> [String] {
    
    // Map medals to indexes
    var medals = [Int: String]()
    medals[0] = "Gold Medal"
    medals[1] = "Silver Medal"
    medals[2] = "Bronze Medal"
    
    let numsSorted = nums.sorted{ $0 > $1 }
    // Creates the medal and rank dictionary
    var ranks = [Int: String]()
    for (index,value) in numsSorted.enumerated() {
        if let medal = medals[index] {
            ranks[value] = medal
        } else {
            ranks[value] = String(index + 1)
        }
    }
    // Returns the relative array using the values from the ranks dictionary
    var relativeRanks = [String]()
    for value in nums {
        if let rank = ranks[value] {
            relativeRanks.append(rank)
        }
    }
    
    return relativeRanks
}


findRelativeRanks([10,3,8,9,4])

