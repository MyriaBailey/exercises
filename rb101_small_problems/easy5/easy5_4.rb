# Letter Swap

# Input: A string of one or more words
# Output: Modified so each individual word of that string has first/last
#   letters swapped

# Rules
# - Assume every word contains at least one letter
# - Assume every string will contain at least one word
# - Assume each string contains nothing but words and spaces

# Examples/Test Cases
# swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
# swap('Abcde') == 'ebcdA'
# swap('a') == 'a'

# Data Structures
# - A string containing words
#   - An array of each word in that string, split by ' '

# Algorithms
# A method that takes a string
# - Split the string by ' ' and store as an array of words
# - Mapping each word in words...
#   - store the first and last chr
#   - new_first = last, new_last = first
# - Join the new array with ' ' and return

# Code
def swap(str)
  swapped = str.split.map do |word|
    word[0], word[-1] = word[-1], word[0]
    word
  end
  swapped.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'