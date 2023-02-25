# Reverse It (Part 2)

# Input: A string with one or more words
# Output: A string that has only words with 5+ chars reversed

# Rules
# - Only the spelling of each word is reversed
# - Order of words and letter casing is preserved
# - Only words that have 5 or more chars are reversed
# - Spaces are only included when more than one word is present

# Examples/Test Cases
# puts reverse_words('Professional')          # => lanoisseforP
# puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
# puts reverse_words('Launch School')         # => hcnuaL loohcS

# Data Structures
# - A string of characters, split into an array of words
#   - for each word, map so that if it is 5+ chars long, it is reversed

# Algorithms
# A method that takes a string
# - Split into an array of words, and for each word of the array, map so
#   - if the word is 5+ chars long, reverse string
#   - else, return string
# - join the array with spaces

# Code
def reverse_words(str)
  str.split.map do |word|
    word.size >= 5 ? word.reverse : word
  end.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS