class Solution:
    def kLengthApart(self, nums: List[int], k: int) -> bool:
        indices = []

        for index, x in enumerate(nums):
            if x == 1:
                indices.append(index)

        for x, y in zip(indices, indices[1:]):
            if y - x <= k:
                return False
        else:
            return True
