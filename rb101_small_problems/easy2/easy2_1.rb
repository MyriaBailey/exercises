# How Old is Teddy?

# Input: none
# Output: A printed string of text including a randomly generated integer

# Rules
# - The method should print something like "Teddy is 69 years old!"
# - The number should be randomly generated between 20 and 200
#   - Is this inclusive? (I think so)

# Examples/Test Cases
# Teddy is 69 years old!

# Data Structures
# A random-selection method will be called on a range of integers
# The method will print a string that uses string interpolation(?) to
#   print the integer

# Algorithms
# A method that does not take any arguments
# - print the message using string interpolation
#   - interpolated value being the result of a randomly selected number
#   - use built in random number method on a range from (20..200)

# Code

# def teddy_age
#   puts "Teddy is #{rand(20..200)} years old!"
# end

# teddy_age

# Further Exploration

# Input: a name
# Output: The given name (or Teddy) and a randomly generated age printed

# Rules
# - Prompt the user for the name first
# - Use "Teddy" if no name is given

# Algorithms
# - Prompting method
#   - Ask user for a name

def name_prompt
  puts "Please give a name:"
  teddy_age(gets.chomp)
end

def teddy_age(name)
  name = 'Teddy' if name == ''

  puts "#{name} is #{rand(20..200)} years old!"
end

name_prompt

# Concluding Notes
# - Unsure if the further exploration can or should be 
#     condensed into one method?
# - Should also include something to account for whitespace in the
#     bit checking if the name is empty