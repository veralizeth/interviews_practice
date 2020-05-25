array = [-2, 1, -3, 4, -1, 2, 1, -5, 4]
#-2, 1,
# Index[1] = 1, sum = -2 + 1 = -1 I take the greater, in this case 1.
# Index[2] = -3, sum = 1 + -3 = - 2, I take -2.
def sub_max(array)
  so_far = array[0]
  max_point = array[0] # [0] -2 and [1] 1 sum -1, number 1

  array.each do |number|
    # to find the max between the two values:
    max_point = max((number + max_point), number)
    so_far = max(max_point, so_far)
  end

  return so_far
end


