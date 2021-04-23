// Binary search Implementation


import Foundation

/*
 leetcode promblem--> return target index if it found , for not found  return -1
 */
func search(_ nums: [Int], _ target: Int) -> Int {

    var left = 0
      var right = nums.count - 1
      guard nums.count > 0 else{
         return -1
      }

      while left <= right {
         let mid = (left + right) / 2
         if nums[mid] == target {
             return mid
         } else if nums[mid] < target {
             right = mid + 1
         } else {
             left = mid - 1
         }
      }
      return -1

  }

// this is a solution for leetcode problem

/* Given a sorted array of distinct integers and a target value,
    return the index if the target is found. If not, return the index where it would be if it were inserted in order.
 */


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

print(search([1,3,5], 1)) //2
