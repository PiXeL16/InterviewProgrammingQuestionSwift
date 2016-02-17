

import UIKit
import Foundation

//:## Are words anagram
//:Create a function that returns true or false if two words are `anagrams`
//:An anagram is a type of word play, the result of rearranging the letters of a word or phrase to produce a new word or phrase, using all the original letters exactly once; for example, the word anagram can be rearranged into nag-a-ram.



/**
 Are word anagrams
 
 - parameter firstWord:  first work to check
 - parameter secondWord: second word to check
 
 - returns: if anagram or not
 */
public func areWordAnagrams(firstWord:String, secondWord:String) -> Bool{
    
    var returnValue = false;
    
    //If we have the same ammount of characters
    if firstWord.characters.count == secondWord.characters.count
    {
        //Splits the string sort and compare
        let firstWordCharacters = firstWord.characters.sort()
        let secondWordCharacers = secondWord.characters.sort()
        
        if firstWordCharacters == secondWordCharacers{
            
            returnValue  = true
            
        }
    }
    
    return returnValue
}


areWordAnagrams("test", secondWord: "estt")
