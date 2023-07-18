import Foundation

func selectionSort(input: [Int]) -> [Int] {
    
    guard input.count > 1 else { return input }
        
    var result = input
    
    for index in 0..<result.count {
        var lowestIndex = index
        for nextIndex in (index + 1)..<result.count {
            if result[nextIndex] < result[lowestIndex] {
                lowestIndex = nextIndex
            }
        }
        if index != lowestIndex {
            result.swapAt(index, lowestIndex)
        }
    }
    
    return result
}

let inputArray = [2, 5, 7, 3, 1]
var result = selectionSort(input: inputArray)

print(result)
