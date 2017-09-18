/*:
 
 # Valid Palindrome
 
 Given a string, determine if it is a palindrome, considering only alphanumeric characters and ignoring cases.
 
 For example,
 `A man, a plan, a canal: Panama` is a palindrome.
 
 `race a car` is not a palindrome.
 
 Note:
 Have you consider that the string might be empty? This is a good question to ask during an interview.
 
 For the purpose of this problem, we define empty string as valid palindrome.
*/

import Foundation


func isPalindrome(_ s: String) -> Bool {
    
    if s.isEmpty {
        return true
    }
    
    var alphaNumeric = stringToAlphanumericLowerCase(s)
    let reversed: String = String(alphaNumeric.characters.reversed())
    if alphaNumeric == reversed {
        return true
    } else {
        return false
    }
}


private func stringToAlphanumericLowerCase(_ s: String) -> String {
    
    let characterSet = NSCharacterSet.alphanumerics.inverted
    var replaceString = s.components(separatedBy: characterSet).joined()
    replaceString = replaceString.lowercased()
    return replaceString
}

isPalindrome("A man, a plan, a canal: Panama")
