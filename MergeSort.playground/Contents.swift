import Foundation

func mergeSort(input array: [Int]) -> [Int] {
    guard array.count > 1 else {
        return array
    }
    
    let middle = array.count / 2
    
    let leftHalves = mergeSort(input: Array(array[0..<middle]))
    let rightHalves = mergeSort(input: Array(array[middle..<array.count]))
    
    return merge(leftHalves, rightHalves)
}

func merge(_ leftPart: [Int],_ rightPart: [Int]) -> [Int] {
    
    var result = [Int]()
    
    var leftIndex = 0
    var rightIndex = 0
    
    
    while leftIndex < leftPart.count && rightIndex < rightPart.count {
        
        if leftPart[leftIndex] < rightPart[rightIndex] {
            result.append(leftPart[leftIndex])
            leftIndex += 1
        }
        else if leftPart[leftIndex] > rightPart[rightIndex] {
            result.append(rightPart[rightIndex])
            rightIndex += 1
        }
        else {
            result.append(leftPart[leftIndex])
            leftIndex += 1
            
            result.append(rightPart[rightIndex])
            rightIndex += 1
        }
    }
    
    if leftIndex < leftPart.count {
        result.append(contentsOf: leftPart[leftIndex..<leftPart.count])
    } else if rightIndex < rightPart.count {
        result.append(contentsOf: rightPart[rightIndex..<rightPart.count])
    }
    
    return result
    
}

let array = [7, 2, 6, 3, 9]
print("Unsorted Array : \(array)")

let sorted = mergeSort(input: array)
print("Sorted Array : \(sorted)")
