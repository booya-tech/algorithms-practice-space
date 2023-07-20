import Foundation

func bubbleSort(_ input: [Int]) -> [Int] {
    guard input.count > 1 else {
        return input
    }
    
    var result = input
    var isSwapped = false
    
    repeat {
        
        isSwapped = false
        
        for index in 1..<result.count {
            
            if result[index] < result[index - 1] {
                result.swapAt(index, index - 1)
                isSwapped = true
            }
            
        }
        
    } while(isSwapped)
    
    return result
}

let array = [3, 5 ,1 ,2, 7] // Expected Output = [1, 2, 3, 5, 7]
let result = bubbleSort(array)
print(result)
