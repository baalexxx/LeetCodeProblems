import UIKit

class Solution1 {
    func checkIfPangram(_ sentence: String) -> Bool {
        var seen = 0
        for currChar in sentence {
            seen |= (1 << (currChar.asciiValue! - 97))
        }
        return seen == 67108863
    }
}

class Solution {
    func checkIfPangram(_ sentence: String) -> Bool {
        (sentence.reduce { $0 |= (1 << ($1.asciiValue! - 97)) }) == 67108863
    }
}

let s = Solution()

s.checkIfPangram("absdefg")
