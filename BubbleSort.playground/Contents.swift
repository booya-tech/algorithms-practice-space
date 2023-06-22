import UIKit

func bubbleSort(_ input: [Int]) -> [Int] {
    guard input.count > 1 else {
        return input
    }
    
    var result = input
    var isSwapped = false
    
    repeat {
        
        isSwapped = false
        
        for index in 1..<result.count {
            
            if (result[index] < result[index - 1]) {
                
                result.swapAt(index, (index - 1))
                isSwapped = true
                
            }
            
        }
        
    } while(isSwapped)
    
    return result
}

let input = [5, 3, 4, 2, 1,] // expected output : [1, 2, 3, 4, 5]
print(bubbleSort(input))
