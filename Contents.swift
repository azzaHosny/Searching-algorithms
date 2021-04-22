// Binary search Implementation

// this is a solution for leetcode problem

//Given a sorted array of distinct integers and a target value, return the index if the target is found. If not, return the index where it would be if it were inserted in order.

import Foundation

func searchInsert(_ nums: [Int], _ target: Int) -> Int {

    var left = 0
    var right = nums.count - 1
    var lowestValueIndexBeforTarget = -1
    var middle = 1

    while left <= right {
        middle = Int((left + right) / 2)
        if nums[middle] < target {
            lowestValueIndexBeforTarget = middle + 1
            left = middle + 1
        } else if nums[middle] > target {
            right = middle - 1
        } else {
            return middle
        }
    }
    return lowestValueIndexBeforTarget != -1 ? lowestValueIndexBeforTarget : 0

  }
// test case
print(searchInsert([1,3,5], 4)) //2
