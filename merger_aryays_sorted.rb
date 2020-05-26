# my_array = [3, 4, 6, 10, 11, 15]
# alices_array = [1, 5, 8, 12, 14, 19]

my_array = [2,3,4]
alices_array = [5,6,7]

# Prints [1, 3, 4, 5, 6, 8, 10, 11, 12, 14, 15, 19]

def merge_arrays(my_array, alices_array)
  index_one = 0
  index_two = 0
  merged_arrays = []

  while index_one < my_array.length && index_two < alices_array.length
    if my_array[index_one] > alices_array[index_two]
      merged_arrays << alices_array[index_two]
      index_two += 1
    else
      merged_arrays << my_array[index_one]
      index_one += 1
    end
  end

  if index_one < my_array.length
    merged_arrays << my_array[index_one..my_array.length]
  else
    merged_arrays << alices_array[index_two..alices_array.length]
  end

  return merged_arrays
end

puts merge_arrays(my_array, alices_array)
