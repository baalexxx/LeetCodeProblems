import UIKit

var greeting = "Hello, playground"

class Node<T> {
    var value: T
    var node: Node? = nil
    
    init(value: T, node: Node) {
        self.value = value
        self.node = node
    }
}

enum MyOptional<T> {
    case empty;
    case notEmpty(value: T)
}


