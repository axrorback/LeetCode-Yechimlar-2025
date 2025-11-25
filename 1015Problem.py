class Solution:
    def smallestRepunitDivByK(self, k: int) -> int:
        rem = 1 % k

        for i in range(1, k + 1):
            if rem == 0:
                return i

            rem = (rem * 10 + 1) % k
        
        return -1
