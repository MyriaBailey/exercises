# Letter Counter (Part 1)

# Input: A string with one or more space separated words
# Output: A hash that shows the number of words of different sizes

# Rules
# - The string can have any number of words including none
# - a word is ANY string of characters separated by spaces
# - ALL characters between each space are counted, including punctuation
# - Should return a hash where the key is an integer indicating length
#   - and the value is an integer representing quantity of matching vals

# Examples/Test Cases
# word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
# word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
# word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
# word_sizes('') == {}

# Data Structures
# - Each word consists of any string of characters separated by spaces
# - Hash key is word length, value is quantity of that value

# Algorithms
# A method that takes a string
# - initialize an empty hash `sizes`
# - Split the string by spaces (store as array)
# - For each word in the array,
#   - length = word character length
#   - if sizes hash contains key `length` +1 to the value
#   - else key `length` = 1
# - return hash sizes

# Code

def word_sizes(str)
  sizes = Hash.new(0)
  str.split.each { |word| sizes[word.length] += 1 }
  sizes
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}

# Concluding Notes
# - Did not realize you can initialize a hash's default value