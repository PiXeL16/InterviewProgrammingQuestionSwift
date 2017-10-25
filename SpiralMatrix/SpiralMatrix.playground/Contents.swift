/*:
 
 # Spiral Matrix
 
 Given a matrix of m x n elements (m rows, n columns), return all elements of the matrix in spiral order.
 
 For example,
 Given the following matrix:
 ```
 [
 [ 1, 2, 3 ],
 [ 4, 5, 6 ],
 [ 7, 8, 9 ]
 ]
 ```
 
 You should return `[1,2,3,6,9,8,7,4,5]`.
 */

func spiralOrder(_ matrix: [[Int]]) -> [Int] {
    
    var spiralArray = [Int]()
    
    guard !matrix.isEmpty else {
        return spiralArray
    }
    
    var rowBegin = 0
    var rowEnd = matrix.count - 1
    var columnBegin = 0
    var columnEnd = matrix[0].count - 1
    
    while ( rowBegin <= rowEnd && columnBegin <= columnEnd) {
        
        // Iterate right
        var currentColumn = columnBegin
        var currentRow = rowBegin
        if ( columnBegin <= columnEnd) {
            for column in columnBegin ... columnEnd {
                
                spiralArray.append(matrix[currentRow][column])
                currentColumn = column
            }
        }
        rowBegin = rowBegin + 1
        
        // Iterate down
        if ( rowBegin <= rowEnd ) {
            for row in rowBegin ... rowEnd {
                
                spiralArray.append(matrix[row][currentColumn])
                currentRow = row
            }
        }
        columnEnd = columnEnd - 1
        
        // Iterate left
        if ( columnBegin <= columnEnd) {
            for column in (columnBegin ... columnEnd).reversed() {
                spiralArray.append(matrix[currentRow][column])
                currentColumn = column
            }
           
        }
         rowEnd = rowEnd - 1
        
        // Iterate Up
        if ( rowBegin <= rowEnd ) {
            for row in (rowBegin ... rowEnd).reversed() {
                spiralArray.append(matrix[rowEnd][currentColumn])
                currentRow = row
            }
        }
        columnBegin = columnBegin + 1
        
    }

    return spiralArray
}

spiralOrder([
    [ 1, 2, 3 ],
    [ 4, 5, 6 ],
    [ 7, 8, 9 ]
    ]
)
