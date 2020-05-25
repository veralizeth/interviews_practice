# Given a secret hand and a guess hand return how many hits and 
# pseudohits are in the guess hand. Example input : 
# secret = [r,g,b,y], guess = [a,g,y,z],  Example output: 1 hit,1 pseudohit. A hit means the guess was the right letter in the right spot. 
# A pseudohit means the letter is correct but in the wrong spot.

# iterate over each char in secret hand -> DONE
# comparare if each char is in guess hand in the exactly index and delete
# that letter from the guess hand. DONE
# And add one to the hit DONE
# if not save it into a hash DONE
# Key letter value the number the ocurrencies DONE
# every time it finds a letter that is already into the hash add up 1. DONE
# One time it finishes iteraring over the secret hand
# iterate over the guess hand and each letter try to find that letter within the 
# hash created before. 
# If that letter is within the hash, add up 1 to the pseudohit and decrease one from the hash letter ocurrenci. 
# when it finished return the values of the hit and the pseudohits. 



def hand(secret_hand, guess)
  hash_not = {}
  possible = []
  hits = 0
  pseudohit = 0

  secret_hand.each do |letter|
    guess.each do |guess_letter|
      if letter == guess_letter
        hits =+ 1
      elsif hash_not[letter]
       hash_not[letter] =+ 1
      else
        hash_not[letter] = 1
      end
    end

  end

p hash_not
  return "You got #{hits} Hits and #{pseudohit} pseudohits"

end
secret_hand = ["r", "g", "b", "y"]
guess =       ["a", "g", "y", "z"]

# r : 1
# b: 1
# y: 1
# hit = 1

# if guess is in y is in
# psudhit = 1
# y - 1


puts hand(secret_hand, guess)


