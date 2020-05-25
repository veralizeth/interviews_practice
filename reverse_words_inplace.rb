message = "cake pound steal"
# When writing your method, assume the message contains only 
# letters and spaces, and all words are separated by one space.
# Prints: 'steal pound cake'
def reverse_string(string, first, last)
  # first = 0
  # last = string.length - 1

  while first < last && string.length 
    string[first], string[last] = string[last],string[first]
    first += 1
    last -= 1
  end
  return string
end

def reverse_words(message)
  first = 0 
  last = message.length - 1
  reverse = reverse_string(message, first, last)
  
  reverse.each_char.with_index do |word, i|
    if word == " "
      reverse_string(word,first,i )
      p i + 1
      first = i + 1
    end
  end
end

# p reverse_string(message)
p reverse_words(message)
