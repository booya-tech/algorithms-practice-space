import Foundation

// Input => [5, 3, 4, 2, 1]
// [3, 5, 4, 2, 1]
// [3, 4, 5, 2, 1]
// [2, 3, 4, 5, 1]
// [1, 2, 3, 4, 5]
func insertionSort(input array: [Int]) -> [Int] {
    
    // First Solution
//    guard array.count > 1 else {
//        return array
//    }
//
//    var result = array
//    var count = array.count
//
//    for sortedArray in 1..<count {
//        var nextIndex = sortedArray
//
//        while(nextIndex > 0 && result[nextIndex] < result[nextIndex - 1]) {
//            result.swapAt(nextIndex, nextIndex - 1)
//            nextIndex -= 1
//        }
//
//    }
//
//    return result
    
    // Second Solution
    guard array.count > 1 else {
        return array
    }
    
    var result = array
    
    for index in 1..<array.count {
        var backIndex = index
        let key = result[backIndex]
        
        while backIndex > 0 && key < result[backIndex - 1] {
            result[backIndex] = result[backIndex - 1]
            backIndex -= 1
        }
        result[backIndex] = key
    }
    
    return result
}

let array = [5, 2, 7, 3, 1]
print(insertionSort(input: array))

