# Counting the Number of Characters

# Input: One or more words
# Output: The number of characters in that string

# Rules:
# - Take a string of word(s)
# - Count the characters in the string
#   - NOT including spaces

# Examples/Test Cases
# Please write word or multiple words: walk
# There are 4 characters in "walk".

# Please write word or multiple words: walk, don't run
# There are 13 characters in "walk, don't run".

# Data Structures
# - A string of words

# Algorithms
# Prompt
# - Ask for a word or more and store as `words`
# Calculations
# - Remove any spaces from the string
#   - Call for length on the temp modified string
#   - Store as `length`
# Display
# - Print the length

# Code

puts "Please write word or multiple words: "
words = gets.chomp

length = words.delete(' ').length

puts "There are #{length} characters in \"#{words}\""