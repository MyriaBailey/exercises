# List of Digits

# Input: one argument (a positive integer)
# Output: array of all the digits in that number

# Rules:
#   When the method is called, it will return the list of digits
#   Input will always be a positive integer

# Test cases:
#   digit_list(375290) == [3, 7, 5, 2, 9, 0]
#   puts digit_list(7) == [7]

# Algorithm:
#   Defining a method that takes an integer and returns an array
#     1. Convert integer to string (.to_s)
#     2. Split the string into its individual characters
#         - For each character, return to an int (.to_i)
#         - Insert into the array (<<)
#     3. Return the array

def digit_list(num)
  num_list = []
  num.to_s.each_char { |char| num_list << char.to_i }
  num_list
end

p digit_list(12345)
p digit_list(7)
p digit_list(375290)
p digit_list(444)
