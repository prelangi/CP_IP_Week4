/*
Given a collection of numbers, return all possible permutations.

Example:

[1,2,3] will have the following permutations:

[1,2,3]
[1,3,2]
[2,1,3] 
[2,3,1] 
[3,1,2] 
[3,2,1]
 NOTE
No two entries in the permutation sequence should be the same.
For the purpose of this problem, assume that all the numbers in the collection are unique.
 Warning : DO NOT USE LIBRARY FUNCTION FOR GENERATING PERMUTATIONS.
*/

void permuteWrapper(vector<int>& nums,vector<bool>& choosen,int start, vector<vector<int>>& result, vector<int>& currPerm) {
        
        if(start >= nums.size()) {
            result.push_back(currPerm);
        }
        else {
            for(int i=0; i<nums.size();i++) {
                if(!choosen[i]) {
                    choosen[i] = true;
                    currPerm.push_back(nums[i]);
                    
                    permuteWrapper(nums,choosen,start+1,result,currPerm);
                    
                    choosen[i] = false;
                    currPerm.pop_back();    
                }
            }
        }
        
    }

vector<vector<int> > Solution::permute(vector<int> &A) {

        int n = A.size();
        vector<bool> choosen(n,false);
        vector<vector<int>> result;
        vector<int> currPerm;
        
        if(n==0) {
            return result;
        }
        else {
            permuteWrapper(A,choosen,0,result,currPerm);
        }
        
        return result; 
    
}
