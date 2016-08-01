# Complete the method called mutation?, which will accept two strings as a parameter
# and return true if all the letters from the second string are contained within
# the first string, and false otherwise.

def mutation?(base_word, mutation)
  #break base_word into letters
  #break mutation into letters
  #check if each mutation letter is present in the base_word
  #for each true one, get one point
  # if the points are equal to the length of the mutation, then we win!
  base = base_word.split(//)
  mutant = mutation.split(//)
  score = mutant.length
  check = 0

  mutant.each do |letter|
    if base.include?(letter)
      check += 1
    end
  end

  if mutation
    check.to_i >= score.to_i
  end
end

# Driver code - don't touch anything below this line.
puts "TESTING mutation?..."
puts

result = mutation?("burly", "ruby")

puts "Your method returned:"
puts result
puts

if result == true
  puts "PASS!"
else
  puts "F"
end

result = mutation?("burly", "python")

puts "Your method returned:"
puts result
puts

if result == false
  puts "PASS!"
else
  puts "F"
end
