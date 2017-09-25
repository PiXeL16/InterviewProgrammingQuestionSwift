/*:
 # First Unique Character in a String
 Given a string, find the first non-repeating character in it and return it's index. If it doesn't exist, return -1.
 *Examples*:
 ```
 s = "leetcode"
 return 0.
 
 s = "loveleetcode",
 return 2.
 ```
 Note: You may assume the string contain only lowercase letters.
 
*/

func firstUniqChar(_ s: String) -> Int {
    
    var dict: [String: Int] = [String: Int]()
    
    for character in s.characters {
        if let value = dict[String(character)] {
            dict[String(character)] = value + 1
        } else {
            dict[String(character)] = 1
        }
    }

    for (index, character) in s.characters.enumerated() {
        if let count = dict[String(character)] {
            if count == 1 {
                return index
            }
        }
    }
    return -1
}

firstUniqChar("aadadaad")
