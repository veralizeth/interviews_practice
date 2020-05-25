def find_max_average(nums, k)
    current_max = nums[0..k-1].reduce(&:+)
    current_sum = current_max
    i = 0
    while i < nums.length-k
        current_sum = current_sum - nums[i] + nums[i+k] 
        current_max = current_sum if current_sum > current_max
        i += 1
    end
    current_max/k.to_f
end

find_max_average([1, 12, -5, -6, 50, 3], 4)
