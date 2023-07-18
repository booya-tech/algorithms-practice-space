import Foundation

// [1, 3, 7, 5, 9,] - windowSize = 3 // Expected Output = [7, 7, 9]
func MaxSlidingWindow(_ input: [Int], windowSize: Int) -> [Int] {
    
    guard input.count >= 1,
          windowSize <= input.count,
          windowSize < input.count
    else {
        return input
    }
    
    var result = [Int]()
    
    switch(windowSize) {
    case 1:
        result = input
    case input.count:
        if let max = input.max() {
            result = [max]
        }
    default :
        for i in 0...input.count - windowSize {
            let window = Array(input[i..<i+windowSize])
            if let maxElement = window.max() {
                result.append(maxElement)
            }
        }
    }
    
    return result
    
}

let input = [1, 3, 7, 5, 9]
let result = MaxSlidingWindow(input, windowSize: 3)
print(result)
