import Foundation
 

// problem link: https://leetcode.com/problems/move-zeroes/

public func moveZeroes(_ nums: inout [Int]) {
    var lastNonZeroFoundAt = 0
    for cur in 0..<nums.count {
        if nums[cur] != 0 {
            nums.swapAt(lastNonZeroFoundAt, cur)
            lastNonZeroFoundAt += 1
        }
    }
}
