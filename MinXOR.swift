/*
Given an array of N integers, find the pair of integers in the array which have minimum XOR value. Report the minimum XOR value.

Examples : 
Input 
0 2 5 7 
Output 
2 (0 XOR 2) 
Input 
0 4 7 9 
Output 
3 (4 XOR 7)

Constraints: 
2 <= N <= 100 000 
0 <= A[i] <= 1 000 000 000
*/
import Foundation

class Solution {
	func findMinXor(_ A: inout [Int]) -> Int {
	    var minXOR = Int.max
        var currXOR: Int 
        
	    if(A.count == 1) {
	        return A[0]
	    }
	    
	    
        A.sort();
        

        var upperLimit = A.count - 1
        
        for i in 0..<upperLimit {
            currXOR = A[i]^A[i+1]
            if(currXOR < minXOR) {
                minXOR = currXOR
            }
        }
        
        return minXOR
        
	}
}
