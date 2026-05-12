import numpy as np
class Solution(object):
    def threeSumClosest(self, nums, target):
        """
        :type nums: List[int]
        :type target: int
        :rtype: int
        """
        # 세 개의 숫자를 합해 target값과 가장 유사하게 만들기
        nums = sorted(nums)
        closest_sum = nums[0] + nums[1]+ nums[2]

        n = len(nums)
        for i in range(n-2):
            left, right = i+1, n-1

            while left < right :
                current_sum = nums[i] + nums[left] + nums[right]
                
                # 만약 target 값과 일치하면 바로 return
                if current_sum == target:
                    return current_sum

                # closest_sum보다 current_sum이 더 target에 가깝다면 closest 업데이트
                if abs(current_sum - target ) < abs(closest_sum - target):
                    closest_sum = current_sum

                if current_sum < target:
                    left += 1
                else:
                    right -= 1

        return closest_sum
                
