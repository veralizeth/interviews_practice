message = "cake pound steal"
# When writing your method, assume the message contains only
# letters and spaces, and all words are separated by one space.
# Prints: 'steal pound cake'
def reverse_string(string, first, last)

  while first < last && string.length
    string[first], string[last] = string[last], string[first]
    first += 1
    last -= 1
  end
  return string
end

def reverse_words(message)
  reverse_string(message, 0, message.length - 1)
  current_index = 0

  (0..message.length).each do |i|
    next unless i == message.length || message[i] == " "
    reverse_string(message, current_index, i - 1)
    current_index = i + 1
  end
  return message
end


reverse_words(message)
