
# O(n) time and O(1)O(1) space.
def reverse_in_place(string)
  start = 0
  end_s = string.length - 1

  while start <= end_s
    string[start], string[end_s] = string[end_s], string[start]
    start += 1
    end_s -= 1
  end

  return string
end

p reverse_in_place("apple")