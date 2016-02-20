
import UIKit

//:## Highest Product
//:Given an array of integers, find the highest product you can get from three of the
//:integers. The input array of integers will always have at least three integers.

/**
Get the highest product

- parameter values: int values with 3 minimun

- returns: highest product
*/
func getHighestProduct(values: [Int]) -> Int {
    
    //Sort de array Desendent
    let sortedArray = values.sort(>)
    
    //Get the first 3 values
    let highestValues = sortedArray.prefix(3)
    
    //Multiply those values
    let highestProduct = highestValues.reduce(1) { $0 * $1 }
    
    return highestProduct
}

getHighestProduct([4, 10, 2, 8, 12])


