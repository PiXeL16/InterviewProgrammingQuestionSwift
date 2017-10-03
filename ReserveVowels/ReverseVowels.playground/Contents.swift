/*:
 
 # Reverse Vowels of String
 
 Write a function that takes a string as input and reverse only the vowels of a string.
 
 Example 1:
 Given s = "hello", return "holle".
 
 Example 2:
 Given s = "leetcode", return "leotcede".
 
 Note:
 The vowels does not include the letter "y".
 

 
*/

import UIKit

var str = "Hello, playground"

let vowels = "aAeEiIoOuU"

func reverseVowels(_ s: String) -> String {
    
    //Obtain vowels from string
    var reverseVowel = ""
    var vowelsFound = [String]()
    
    for character in s.characters.reversed() {
        if vowels.characters.contains(character) {
            vowelsFound.append(String(character))
        }
    }
    
    var count = 0
    for character in s.characters {
        
        if vowels.characters.contains(character) {
            reverseVowel.append(vowelsFound[count])
            count = count + 1
        } else {
            reverseVowel.append(character)
        }
    }
    return reverseVowel
}


reverseVowels("leetcode")








