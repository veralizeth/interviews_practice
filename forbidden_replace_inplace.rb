def forbidden!(string, forb)
  swap_index = 0
  (0...string.length).each do |index|
    if string[index] != forb
      if swap_index != index
        string[swap_index], string[index] = string[index], string[swap_index]
      end
      swap_index += 1
    else
      # "\0" == nil
      string[index] = "\0"
    end
  end
  return string
end

puts forbidden!("bobo", "o") # bboo

def forbidden_2(string, forb)
  read_index = 0
  write_index = 0

  while read_index <= string.length - 1 && write_index <= string.length - 1
    if string[read_index] != forb
      if read_index != write_index
        string[write_index], string[read_index] = string[read_index], string[write_index]
      end
      read_index += 1
      write_index += 1
    else
      string[read_index] = "\0"
      read_index += 1
    end
  end
  return string
end

puts forbidden_2("dog", "o") # bbnilnil
