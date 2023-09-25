import Foundation

func champagneTower(_ poured: Int, _ query_row: Int, _ query_glass: Int) -> Double {
    var champagneTower = [[Double]](repeating: [Double](repeating: 0.0, count:query_row + 2), count: query_row + 2)

    champagneTower[0][0] = Double(poured)

    for i in 0...query_row
    {
        for j in 0...i
        {
            print(i)
            print(j)
            var spillage: Double = ((champagneTower[i][j] - 1) / 2)
            //for index out of range
            guard spillage > 0 else { continue }
            
            champagneTower[i + 1][j] += spillage
            champagneTower[i + 1][j + 1] += spillage
            
        }
    }
    
    return min(1, champagneTower[query_row][query_glass])
}
