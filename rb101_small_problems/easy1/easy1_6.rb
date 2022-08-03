# Reverse It (part 2)

# Input: takes a string (with 1+ words)
# Output: Returns a string with some words reversed

# Rules
# - Only some words are reversed
#   - Each word with 5+ characters is reversed
#   - No capitalization is changed
# - The order of the words remains the same
# - Each string ONLY has letters and/or spaces
#   - Spaces only included when more than one word is present
#   - Empty/space only strings should return fully empty

# Examples/Test Cases
# puts reverse_words('Professional')          # => lanoisseforP
# puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
# puts reverse_words('Launch School')         # => hcnuaL loohcS

# Data Structures
# - Take a string
# - Convert into an array of sub-strings
# - Join back into a string

# Algorithms
# For a method that takes a string and returns a new, modified string
# - Create a new variable for the new string
# - Separate a string into an array of words (split)
#   - For each element, count how many characters
#     - If 5+ chars, reverse that part of the string
#   - Assign this array to the new variable
# - Join the array together with ' '

# Code

def reverse_words(input)
  output = input.split(' ').map do |element|
    if element.length >= 5
      element.reverse
    else
      element
    end
  end
  output.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS

# Concluding Notes
# Could one-line the word reversing with a mutating version if >= 5
# Then simply return the possibly mutated element regardless
# Or skip the .map and instead << into an empty array