/*:

 # Number of Islands
 
 Given a 2d grid map of '1's (land) and '0's (water), count the number of islands. An island is surrounded by water and is formed by connecting adjacent lands horizontally or vertically. You may assume all four edges of the grid are all surrounded by water.
 *Example 1:*
 ```
 11110
 11010
 11000
 00000
 ```
 Answer: 1
 
 *Example 2:*
 ```
 11000
 11000
 00100
 00011
 ```
 Answer: 3
 
*/


func numIslands(_ grid: [[Character]]) -> Int {
    
    var numberOfIslands = 0
    var terraformingGrid = grid
    for (indexRow, row) in terraformingGrid.enumerated() {
        for indexColumn in (0 ..< row.count) {
            let character = terraformingGrid[indexRow][indexColumn]
            if(character == "1") {
                numberOfIslands = numberOfIslands + 1
                explodeIsland(indexRow: indexRow, indexColumn: indexColumn, grid: &terraformingGrid)
            }
        }
    }
    
    return numberOfIslands
}

func explodeIsland(indexRow: Int, indexColumn: Int, grid: inout [[Character]]) {
    
    if(indexRow < 0 || indexColumn < 0 || indexRow >= grid.count || indexColumn >= grid[indexRow].count || grid[indexRow][indexColumn] == "0") {
        return
    }
    
    grid[indexRow][indexColumn] = "0"
    explodeIsland(indexRow: indexRow + 1, indexColumn: indexColumn, grid: &grid)
    explodeIsland(indexRow: indexRow - 1, indexColumn: indexColumn, grid: &grid)
    explodeIsland(indexRow: indexRow, indexColumn: indexColumn + 1, grid: &grid)
    explodeIsland(indexRow: indexRow, indexColumn: indexColumn - 1, grid: &grid)
}


let test: [[Character]] = [["1","1","0","0","0"],
                           ["1","1","0","0","0"],
                           ["0","0","1","0","0"],
                           ["0","0","0","1","1"]]

numIslands(test)


