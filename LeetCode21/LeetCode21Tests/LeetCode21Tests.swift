//
//  LeetCode21Tests.swift
//  LeetCode21Tests
//
//  Created by Oleksii Baiev on 03/10/2022.
//

import XCTest
@testable import LeetCode21

final class LeetCode21Tests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        class ListNode {
            public var val: Int
            public var next: ListNode?
            public init() { self.val = 0; self.next = nil; }
            public init(_ val: Int) { self.val = val; self.next = nil; }
            public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
        }
        
        class Solution {
            func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {

                guard var list1 = list1 else { return list2 }
                guard var list2 = list2 else { return list1 }
                var mergeList = ListNode()
                
                let headMergeList = mergeList
                
                repeat {
                    if list1.val <= list2.val {
                        var next = list1.next!
                        mergeList.next = list1
                        list1 = next
                        mergeList = list1
                    } else {
                        var next = list2.next!
                        mergeList.next = list2
                        list2 = next
                        mergeList = list2
                    }
                } while list1.next != nil && list2.next != nil
                
                if list1.next != nil {
                    mergeList.next = list2
                } else {
                    mergeList.next = list1
                }

                return headMergeList.next
            }
        }
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
