# Capitalize Words

# Input: A string
# Output: Same string with ONLY the first char of each word capitalized

# Rules
# - Only the first letter of each word is capatalized
#   - all other letters downcased
# - if a word is in quotes, it is not capitalized at all

# Examples/Test Cases
# word_cap('four score and seven') == 'Four Score And Seven'
# word_cap('the javaScript language') == 'The Javascript Language'
# word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

# Data Structures
# - A string, split into an array of words

# Algorithms
# A method that takes a string
# - Split the string into an array by ' '
# - For each word in the array, capitalize it
# - Rejoin the array with ' '

# Code
def word_cap(str)
  str.split.map do |word|
    word.capitalize
  end.join(' ')
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'