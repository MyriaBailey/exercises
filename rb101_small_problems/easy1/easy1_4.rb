# How Many?

# Input: an array containing many strings
# Output: printed result of how many occurrences

# Rules
#   - One method must count, and display the results.
#   - Words are case-sensitive
#   - 

# Examples and Test Cases
# Result should look something like:
#   car => 4
#   truck => 3
#   SUV => 1
#   motorcycle => 2

# Data Structures
#   - Input is an array containing strings
#   - When counting, need to store unique words + number of occurences
#     - Hash with word-occurence pairs

# Algorithm
# Defining a method that takes an array and displays information
#   1. Counting occurences
#     - Initialize empty hash
#     - For each value in the provided array (UNLESS EMPTY),
#       - Check if the value/key exists in the hash already
#       - No: Add as a key to hash with the value 1
#       - Yes: Update the existing key's value by 1
#   2. Displaying results
#     - For each key/value pair in the hash (UNLESS EMPTY),
#       - Print the key, ' => ', and the value

# Code

def count_occurrences(words)
  occurrences = {}

  words.each do |word|
    if occurrences.include?(word)
      occurrences[word] += 1
    else
      occurrences[word] = 1
    end
  end

  occurrences.each_pair { |word, times| puts "#{word} => #{times}" }
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)

# Concluding Notes
# Could simplify counting with the `uniq` and `count` array methods