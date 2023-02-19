# Delete Vowels

# Input: An array of strings
# Output: The same array, but with all vowels removed

# Rules
# - Take an array of strings
# - Return an array of the same string values,
#   - but with all vowels removed
# - Both lowercase AND uppercase included!
# - Return empty string if it's all vowels

# Examples/Test Cases
# remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
# remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
# remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

# Data Structures
# - An array of strings
# - opperating on each object of the array
# - returning the newly modified array

# Algorithms
# A method that takes an array
# - Transforming each object of the array
#   - for each string, delete 'AEIOUaeiou'

# Code

def remove_vowels(words)
  words.map do |word|
    word.delete('AEIOUaeiou')
  end
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']