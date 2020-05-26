def move_zeroes(nums)
  swap_index = 0

  (0...nums.length).each do |index|
    if nums[index] != 0
      if swap_index != index
        nums[swap_index], nums[index] = nums[index], nums[swap_index]
      end
      swap_index += 1
    end
  end
  return nums
end

# p move_zeroes([1, 5, 0, 3, 0, 9, 2])
