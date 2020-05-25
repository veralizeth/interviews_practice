
def word_rotation(word, index)
  temp = ""
  
  for char_idx in (index...word.length)
    temp << word[char_idx]
  end
  puts temp
end

def is_rotation(word_one, word_two)

  first_char_word_one = word_one[0]

  index_start_word_two = 0
  word_two.each_char do |char|

    if first_char_word_one == char

    end
  end

end

is_rotation("apal", "alap")

word_rotation("apal", 2)