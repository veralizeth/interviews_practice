
def reverse_in_place(string, first, last)

  while first < last
    
    string[first], string[last] = string[last], string[first]

    first += 1
    last -= 1
  end
  return string
end

def reverse_in_place_words(message)
  reverse_in_place(message, 0, message.length - 1)

  current_start_index = 0

  (0..message.length).each do |index|

    next unless index == message.length || message[index] == " "
    reverse_in_place(message, current_start_index, index - 1)
    current_start_index = index + 1
  end
  return message
end

p reverse_in_place_words("apple and bannanas")
