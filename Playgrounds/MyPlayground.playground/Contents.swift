import UIKit

var greeting = "Hello, playground"

var nums = [Int]()
let target = 10

if let res = (nums.enumerated().first { $0.element == target }) {
    return res.offset
}

return -1
    

