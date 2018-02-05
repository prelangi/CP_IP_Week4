/*
Given a digit string, return all possible letter combinations that the number could represent.

A mapping of digit to letters (just like on the telephone buttons) is given below.

The digit 0 maps to 0 itself.
The digit 1 maps to 1 itself.

Make sure the returned strings are lexicographically sorted.
*/

import Foundation

class Solution {
    var temp = ""
    var keypad:[Character:String] = [
                    "1": "1",
                    "2": "abc",
                    "3": "def",
                    "4": "ghi",
                    "5": "jkl",
                    "6": "mno",
                    "7": "pqrs",
                    "8": "tuv",
                    "9": "wxyz",
                    "0": "0"
                 ]
                 
    func letterCombinationsWrapper(_ A: inout String, _ idx: Int, _ res: inout [String]) {
        var digits = Array(A.characters)
        //if ((digits[idx]-"0" > -1) && (digits[idx]-"0" < 10)) {
            var str4digits = keypad[digits[idx]]
            for i in 0..<str4digits!.count {
                var stridx = str4digits!.index(str4digits!.startIndex,offsetBy:i);
                temp.append(str4digits![stridx])
                if idx==(digits.count-1) {
                    res.append(temp)
                }
                else {
                    letterCombinationsWrapper(&A,idx+1,&res)
                }
                
                temp.removeLast()
            }
        //}
        
    }   
    
	func letterCombinations(_ A: inout String) -> [String] {
	    var result = [String]()
	    letterCombinationsWrapper(&A,0,&result)
        
        return result
        
	}
}
