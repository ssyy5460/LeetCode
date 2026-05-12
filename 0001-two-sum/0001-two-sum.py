class Solution(object):
    def twoSum(self, nums, target):
        """
        :type nums: List[int]
        :type target: int
        :rtype: List[int]
        """
        
        result = {}
        n = len(nums)

        for i, num in enumerate(nums):
            complement = target - num
            if complement in result:
                return [result[complement],i ]
            result[num] = i