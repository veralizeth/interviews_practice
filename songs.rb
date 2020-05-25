def song_pair(array)
  pairs = 0
  for song1 in (0...array.length - 1)
    for song2 in (song1 + 1...array.length)
      if (array[song1] + array[song2]) % 60 == 0
        pairs += 1
      end
    end
  end
  return pairs
end

p song_pair([30, 20, 150, 100, 40])
p song_pair([60, 60, 60])
