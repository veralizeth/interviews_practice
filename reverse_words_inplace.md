### Write a method reverse_words!() that takes a message as a string and reverses the order of the words in place.

For example:

`message = 'cake pound steal'`

`Prints: 'steal pound cake'`

### Steps: 

### Part one: Reverse the string, no each word. 
1. create a method to reverse the whole string. Called `reverse_string`
2. Takes as a parameters (string, first index, last index)
3. While the first_index is less than the last one *and* the length of the string. 
4. change, the first letter with the last one. 
5. Increment the first index by 1 
6. Decrement the last index by 1
7. return the string. 

The result would be something like: 
`laets dnuop ekac`

### Part two: Reverse each word
1. Create another function called reverse_words.
2. Takes as a parameters (message)
3. Use the `reverse_string` method (message, 0, message.length). 0 to the last index of the message.
4. Return the message in reverse: (`laets dnuop ekac`). 
5. Set the current index to 0, this current index is going to change eveytime it finds a empty character `" "`. 
6. Iterate over the message from 0 to the length of the message. 
7. Next unless the index of the message is equal to length of the message or the char is equal to `" "`, empty char. 
8. if the current index is empty or is the last one, use the method `reverse_string(message, current_index, i+1)` i - 1, because `i` is the empty char, i - 1 is the char. 
9. current index = i + 1. Is the char after the `" "` empety char. 
10. return the message. 

```ruby 
message = "cake pound steal"
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
```

