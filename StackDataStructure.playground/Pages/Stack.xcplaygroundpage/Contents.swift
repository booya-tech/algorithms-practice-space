import Foundation

public struct Stack<Element> {
    var storage: [Element] = []
    
    public init() {}
    
    public mutating func push(_ element: Element) {
        storage.append(element)
    }
    
    public mutating func pop() -> Element? {
        storage.isEmpty ? nil : storage.removeLast()
    }
    
    public var peek: Element? {
        storage.last
    }
    
    public var isEmpty: Bool {
        storage.isEmpty
    }
}

var intStack = Stack<Int>()
let emptyMessage = "Stack is empty"
intStack.push(10)
intStack.push(5)
intStack.push(20)
intStack.pop()
intStack.pop()
intStack.pop()
print(intStack.peek ?? emptyMessage)
intStack.isEmpty


