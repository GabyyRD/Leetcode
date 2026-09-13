class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        combinacao = {}

        for i in range(len(nums)):
            complemento = target - nums[i]
            
            if complemento in combinacao:
                return [combinacao[complemento], i]
            else:
                combinacao[nums[i]] = i
        return None 