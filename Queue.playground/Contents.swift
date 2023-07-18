import UIKit

public struct Queue<Element> {
    
    var starbuckQueue:[Element] = []
    
    // Enqueue
    mutating func enqueue(custName element: Element) {
        starbuckQueue.append(element)
    }
    
    // Dequeue
    mutating func dequeue() {
        starbuckQueue.isEmpty ? nil : starbuckQueue.removeLast()
    }
    
    // Peek
    var peek: Element? {
        starbuckQueue.first
    }
    
}

var queue = Queue<String>()

queue.enqueue(custName: "Jame")
queue.enqueue(custName: "Joe")
queue.enqueue(custName: "Jim")
queue.enqueue(custName: "Jack")
queue.enqueue(custName: "Jasica")

print("All Active queue : \(queue)")
print("The first queue is : \(queue.peek)")
