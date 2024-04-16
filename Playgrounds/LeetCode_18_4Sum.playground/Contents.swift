import UIKit


// https://leetcode.com/problems/4sum/description/

/*

18. 4Sum (Medium)

Given an array nums of n integers, return an array of all the unique quadruplets [nums[a], nums[b], nums[c], nums[d]] such that:

0 <= a, b, c, d < n
a, b, c, and d are distinct.
nums[a] + nums[b] + nums[c] + nums[d] == target
You may return the answer in any order.

Example 1:

Input: nums = [1,0,-1,0,-2,2], target = 0
Output: [[-2,-1,1,2],[-2,0,0,2],[-1,0,0,1]]
Example 2:

Input: nums = [2,2,2,2,2], target = 8
Output: [[2,2,2,2]]
 

Constraints:

1 <= nums.length <= 200
-10^9 <= nums[i] <= 10^9
-10^9 <= target <= 10^9
 
 */

class Solution {
    func fourSum(_ nums: [Int], _ target: Int) -> [[Int]] {

        if nums.count < 4 {
            return []
        }

        let nums = nums.sorted()

        if nums[0] == nums.last {
            if nums[0] * 4 == target {
                return [[nums[0], nums[0], nums[0], nums[0]]]
            } else {
                return []
            }
        }

        if nums[0] + nums[1] + nums[2] + nums[3] > target {
            return []
        }

        var results = Set<[Int]>()

        for i in (0...nums.count-4) {
            for j in (i+1...nums.count-3) {
                var left = j+1
                var right = nums.count-1

                while left < right {
                    let currentSum = nums[i] + nums[j] + nums[left] + nums[right]

                    if currentSum == target {
                        let newRes = [nums[i], nums[j], nums[left], nums[right]]
                        results.insert(newRes)
                        left += 1
                        right -= 1
                    } else if currentSum < target {
                        left += 1
                    } else {
                        right -= 1
                    }
                }
            }
        }
        return Array(results)
    }
}
