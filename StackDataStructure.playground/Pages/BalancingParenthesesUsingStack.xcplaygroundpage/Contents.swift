//: [Previous](@previous)

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

func checkBalance(expression: String) -> Bool {
    var stack = Stack<Character>()
    
    for i in expression {
        if i == "(" || i == "{" {
            stack.push(i)
        } else if i == ")" || i == "}" {
            if stack.isEmpty {
                return false
            } else {
                stack.pop()
            }
        }
    }
    
    return stack.isEmpty
}

let expression1 = "{1 + 2} * (3 + 4)"
let expression2 = "(1 + 2 * (3 + 4)"

print("The first expression \(expression1) is \(checkBalance(expression: expression1) ? "balance" : "not balance")" )
print("The second expression \(expression2) is \(checkBalance(expression: expression2) ? "balance" : "not balance")" )
