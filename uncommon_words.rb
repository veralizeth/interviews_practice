def uncommon_words(s1, s2)
  s1.downcase
  s2.downcase
  s1array = s1.split(" ")
  s2array = s2.split(" ")
  hash_counter = {}
  result = []

  s1array.each do |word|

    if hash_counter[word]
      hash_counter[word] =+ 1
    else
      hash_counter[word] = 1
    end
  end

  s2array.each do |word|

    if hash_counter[word]
      hash_counter[word] =+ 1
    else
      hash_counter[word] = 1
    end
  end



  hash_counter.keys.select do |key|
    if hash_counter[key] == 1
      result << key
    end
  end

  return result
end

p uncommon_words("this apple is sweet", "this apple is sour")
