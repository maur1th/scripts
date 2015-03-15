# sum_squares.py

def ss_lin(nums):
    total = 0
    for i in range(len(nums)):
        total += nums[i] ** 2
    return total

def ss_rec(nums):
    if len(nums) == 1:
        return nums[0] ** 2
    else:
        return nums[0] ** 2 + ss_rec(nums[1:])

def ss_func(nums):
    return sum(x ** 2 for x in nums)