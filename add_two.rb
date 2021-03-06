# Given an array of integers, return indices of the two numbers such that
# they add up to a specific target.
# You may assume that each input would have exactly one solution,
# and you may not use the same element twice.

# Example:
# Given nums = [2, 7, 11, 15], target = 9,
#
# Because nums[0] + nums[1] = 2 + 7 = 9,
# return [0, 1].

# Iterate over the array
# Create an array to hold the values.
# Create a hash
# Each index save it as a key and the value within a hash:  DONE

# 0: 2
# 1: 7
# 3: 11
# 4: 15

# iterate over the array and have the result of 9 - index
# 9 - 2 = 7
# 9 - 7 = 2
# 9 - 11 = -2
# 9 - 15
# if result(7) is within the hash save the value of the key into an array [1]
# if result (2) array push that key [1,0]
# return that array.

def two_sum(nums, target)
  hash_idx_nums = {}

  for index in (0...nums.length)
    result = target - nums[index]

    if hash_idx_nums.include?(result)
      return [hash_idx_nums[result], index]
      
    else
      hash_idx_nums[nums[index]] = index
    end
  end
  p hash_idx_nums
end
# { 3 => 0 }
#  p two_sum([2, 7, 11, 15],9)

# p two_sum([3, 2, 4], 6)

p two_sum([3, 3], 6)

