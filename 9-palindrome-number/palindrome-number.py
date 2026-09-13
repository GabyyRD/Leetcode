class Solution:
    def isPalindrome(self, x: int) -> bool:
        numero = str(x)
        return numero == numero[::-1]
        