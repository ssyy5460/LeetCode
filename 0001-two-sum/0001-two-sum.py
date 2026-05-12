class Solution(object):
    def twoSum(self, nums, target):
        """
        :type nums: List[int]
        :type target: int
        :rtype: List[int]
        """
        
        result = {} # 값 : 인덱
        n = len(nums)

        for i, num in enumerate(nums):
            complement = target - num # 짝꿍 값 확인
            if complement in result: # 짝꿍값 result에 있음
                return [result[complement], i ] 
            result[num] = i # 없으면 추가