import Foundation

func selectionSort(input: [Int]) -> [Int] {
    guard input.count > 1 else {
        return input
    }
     
    var result = input
    
    for index in 0..<(result.count - 1) {
        var indexLowest = index
        
        for nextIndex in (index + 1)..<result.count {
            if result[nextIndex] < result[indexLowest] {
                indexLowest = nextIndex
            }
        }
        
        if index != indexLowest {
            result.swapAt(index, indexLowest)
        }
    }
    
    return result
}

let array = [2, 3, 5, 1]

print(selectionSort(input: array))
