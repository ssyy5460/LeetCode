class Solution(object):
    def calPoints(self, operations):
        """
        :type operations: List[str]
        :rtype: int
        """
        # x : 새로운 수 곱하기, + : 이전 두 점수 더하기, D : 이전 숫자 * 2, C : 이전 숫자 지우
        sum_list = []

        for ops in operations:
            if ops not in ['+', 'D', 'C']:
                sum_list.append(int(ops))

            elif ops == 'D':
                sum_list.append(sum_list[-1]*2)

            elif ops == 'C':
                sum_list.pop()

            elif ops == '+':
                value = sum_list[-1] + sum_list[-2]
                sum_list.append(value)

        return sum(sum_list)
