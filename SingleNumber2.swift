/*
Given an array of integers, every element appears thrice except for one which occurs once.

Find that element which does not appear thrice.

Note: Your algorithm should have a linear runtime complexity.

Could you implement it without using extra memory?

Example :

Input : [1, 2, 4, 3, 3, 2, 2, 3, 1, 1]
Output : 4
*/

// Used the following discussion on Leetcode to arrive at the solution
// https://discuss.leetcode.com/topic/11877/detailed-explanation-and-generalization-of-the-bitwise-operation-method-for-single-numbers/2

import Foundation

class Solution {
	func singleNumber(_ A: [Int]) -> Int {
	    //k=3, p=1
        var x1 = 0, x2 = 0, mask = 0
        var arrLen = A.count
        
        if arrLen == 0 {
            return 0
        }
            
        
        for i in 0..<arrLen {
            
            x2 = x2 ^ (x1 & A[i])
            x1 = x1 ^ A[i]
            mask = ~(x1 & x2)
            x2 = x2 & mask
            x1 = x1 & mask
            
            //print("x2: \(x2), x1: \(x1), mask: \(mask)")
        }
        
        return x1
	}
}
