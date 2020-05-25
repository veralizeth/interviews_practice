array = [-2, 1, -3, 4, -1, 2, 1, -5, 4]

# Index[1] = 1, sum = -2 + 1 = -1 I take the greater, in this case 1.
# Index[2] = -3, sum = 1 + -3 = - 2, I take -2.

def max(array)
  max_so_far = array[0]
  max_point = array[0] # [0] -2 and [1] 1 sum -1, number 1

  for index in (1...array.length)
    sum = array[index] + max_point
 
    if array[index] > sum
      max_point = array[index]
    else
      max_point = sum
    end
    
    if max_point > max_so_far
        max_so_far = max_point
    end
  end
  return max_so_far
end

p max(array)
