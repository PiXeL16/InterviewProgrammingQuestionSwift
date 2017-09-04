/*:
 
 # Roman to Integer
 Given a roman numeral, convert it to an integer.
 Input is guaranteed to be within the range from 1 to 3999.
 
*/

var romans =  [String: Int]()
romans["I"] = 1
romans["V"] = 5
romans["X"] = 10
romans["L"] = 50
romans["C"] = 100
romans["D"] = 500
romans["M"] = 1000

func romanToInt(_ s: String) -> Int {
    
    var total = 0
    var pastValue = 0
    
    for element in s {
        
        var value = romans[String(element)]!
        
        if pastValue < value {
            total += value
        } else {
            total -= value
        }
        
        pastValue = value
        
    }
    
    return total
}

romanToInt("XIV")
