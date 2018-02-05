/*
Given an array of integers, every element appears twice except for one. Find that single one.

Note: Your algorithm should have a linear runtime complexity. Could you implement it without using extra memory?

Example :

Input : [1 2 2 3 1]
Output : 3
*/

import Foundation

class Solution {
	func singleNumber(_ A: [Int]) -> Int {
        var result = 0
        for i in 0..<A.count {
            result = result^A[i]
        }
        
        return result
	}
}
