class Solution(object):
    def addDigits(self, num):
        """
        :type num: int
        :rtype: int
        """
        while num >= 10:
            temp_sum = 0
            for digit in str(num):
                temp_sum += int(digit)
            num = temp_sum # 합산된 결과를 다시 num에 대입
        return num