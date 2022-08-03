# Greeting a User

# Input: A name as a string
# Output: One of two greetings

# Rules
# - Ask for the name
# - If the name ends with an ! then output a different message
#   - The ! must be removed from the new greeting
#   - The name must be made uppercase

# Examples/Test Cases
# What is your name? Bob
# Hello Bob.

# What is your name? Bob!
# HELLO BOB. WHY ARE WE SCREAMING?

# Data Structures
# - Working with strings and string analysis
# - Also using conditional statements

# Algorithms
# Prompt:
# - Ask for the name and store result
# Conditional statement:
# - if the name ends with ! then:
#   - Remove the !
#   - Print loud greeting
# - else:
#   - Print regular greeting

# Code

puts "What is your name?"
name = gets.chomp

if name.end_with?('!')
  name = name.chop.upcase
  puts "HELLO #{name}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end

# Concluding Notes
# - To remove the last character of a string, can use .chop