import UIKit

// LeetCode_35_Search_Insert_Position
// https://leetcode.com/problems/search-insert-position/description/
/*

 35. Search Insert Position
Easy
9.9K
474
Companies
Given a sorted array of distinct integers and a target value, return the index if the target is found. If not, return the index where it would be if it were inserted in order.

You must write an algorithm with O(log n) runtime complexity.

 

Example 1:

Input: nums = [1,3,5,6], target = 5
Output: 2
Example 2:

Input: nums = [1,3,5,6], target = 2
Output: 1
Example 3:

Input: nums = [1,3,5,6], target = 7
Output: 4
 

Constraints:

1 <= nums.length <= 10^4
-10^4 <= nums[i] <= 10^4
nums contains distinct values sorted in ascending order.
-10^4 <= target <= 10^4
 
*/

// my 1-st solution
class Solution_1 {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {

        if target <= nums[0]  { return 0 }
        if nums[nums.count - 1] == target { return nums.count - 1 }
        if nums[nums.count - 1] < target { return nums.count }
            
        var left = 0
        var right = nums.count-1
        var mid = (right + left)/2

        while right - left > 1 {
            if nums[mid] == target { return mid }
            if nums[left] == target { return left }
            if nums[right] == target { return right }
            
            if nums[mid] < target {
                left = mid
            } else {
                right = mid
            }

            mid = (right + left)/2
        }

        if nums[mid] == target { return mid }
        if nums[left] == target { return left }
        return right
    }
}

// my 2-nd solution
class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        nums.firstIndex { $0 >= target } ?? nums.count
    }
}

let solution = Solution()
solution.searchInsert([1,3,5,6], 5)
solution.searchInsert([1,3,5,6], 2)
solution.searchInsert([1,3,5,6], 7)

