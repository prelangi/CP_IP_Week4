/*
Reverse bits of an 32 bit unsigned integer

Example 1:

x = 0,

          00000000000000000000000000000000  
=>        00000000000000000000000000000000
return 0

Example 2:

x = 3,

          00000000000000000000000000000011 
=>        11000000000000000000000000000000
return 3221225472

Since java does not have unsigned int, use long
*/

unsigned int Solution::reverse(unsigned int A) {
    // Do not write main() function.
    // Do not read input, instead use the arguments to the function.
    // Do not print the output, instead return values as specified
    // Still have a doubt. Checkout www.interviewbit.com/pages/sample_codes/ for more details

    
    unsigned int result = 0;
    int cnt = 0, idx = 0;
    
    if(A==0) {
        return result;
    }
    
    while(A>0) {
        idx = 32-1-cnt; 
        result += (A%2)*pow(2,idx);
        A = A/2;
        cnt +=1;
    }
    
    return result; 
}
