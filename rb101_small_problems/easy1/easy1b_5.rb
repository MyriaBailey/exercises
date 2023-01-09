# Bannerizer

# Input: A short line of text
# Output: That same text but printed in a decorative text box

# Rules
# - Accept a string
# - Print that string in the middle of a decorative box
# - The box is of fixed height (assume input always fits in terminal window)
# - The box's width is adjusted by how long the text is

# Examples/Test Cases

# print_in_box('To boldly go where no one has gone before.')
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+

# print_in_box('')
# +--+
# |  |
# |  |
# |  |
# +--+

# Data Structures
# - Take a string
# - count how many characters in it
# - print elements

# Algorithms
# A method that
# - Takes a string of characters
#   - Count how many characters in that string and save as length
# - Using string concatenation,
#   - Print the first few decorative characters
#   - Print the filler characters [length] times
#   - (repeat process for each line, w/ actual text replacing middle filler)

# Code

def print_in_box(str)
  length = str.length

  puts '+-' + ('-' * length) + '-+'
  puts '| ' + (' ' * length) + ' |'
  puts '| ' + str + ' |'
  puts '| ' + (' ' * length) + ' |'
  puts '+-' + ('-' * length) + '-+'

end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')

# Concluding thoughts
# - Forgot that you could simply multiply a string within the
#     puts method
# - Otherwise simple!