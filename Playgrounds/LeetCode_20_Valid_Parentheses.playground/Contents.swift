import UIKit

var greeting = "Hello, playground"


// https://leetcode.com/problems/valid-parentheses/description/
// 20. Valid Parentheses (easy)

class Solution {
    func isValid(_ s: String) -> Bool {
        
        let pairBrakets: Dictionary<Character, Character> = [")":"(", "]":"[", "}":"{"]
        var parenthesesStack = [Character]()
        
        for char in s {
            switch char {
            case "(", "[", "{":
                parenthesesStack.append(char)
            case ")", "]", "}":
                if parenthesesStack.last != pairBrakets[char] {
                    return false
                }
                parenthesesStack.popLast()
            default: continue
            }
        }
        
        return parenthesesStack.isEmpty
    }
}

let solution = Solution()

solution.isValid("()")
solution.isValid("(]")
solution.isValid("[[{}]]")



