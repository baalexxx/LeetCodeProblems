import UIKit

// LeetCode_242_Valid_Anagram
// 242. Valid Anagram
// https://leetcode.com/problems/valid-anagram/

/*
Given two strings s and t, return true if t is an anagram of s, and false otherwise.

An Anagram is a word or phrase formed by rearranging the letters of a different word or phrase, typically using all the original letters exactly once.

 

Example 1:

Input: s = "anagram", t = "nagaram"
Output: true
Example 2:

Input: s = "rat", t = "car"
Output: false
 
Constraints:

1 <= s.length, t.length <= 5 * 104
s and t consist of lowercase English letters.
 

Follow up: What if the inputs contain Unicode characters? How would you adapt your solution to such a case?
 
 */


var greeting = "Hello, playground"


// my first solution
// https://leetcode.com/problems/valid-anagram/submissions/813588371/
class Solution_1 {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        s.sorted() == t.sorted()
    }
}

// not my, based on fastest soultion
class Solution_2 {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        guard s.count == t.count else { return false }
        
        var map = [Character:Int]()
        s.forEach { map[$0, default: 0] += 1 }
        t.forEach { map[$0, default: 0] -= 1 }
        
        for (_,v) in map {
            if v != 0 { return false }
        }
        
        return true
    }
}

class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        guard s.count == t.count else { return false }
        var map = [Character: Int]()
        s.forEach { map[$0, default: 0] += 1 }
        t.forEach { map[$0, default: 0] -= 1 }
        return (map.first { $0.value != 0 }) == nil
    }
}

let solution = Solution()


solution.isAnagram("test", "tets")

