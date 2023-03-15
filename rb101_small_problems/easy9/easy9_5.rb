=begin
Name Swapping

Rules

Input: A string representing a first name, a space, and a last name
Output: A string representing last name, comma, space, first name

Examples/Test Cases
swap_name('Joe Roberts') == 'Roberts, Joe'

Data Structures
- A string, into an array of names, and into a new string

Algorithms
A method that takes a string
- split str by space
- reverse the arr of names
- join with ', '
=end

def swap_name(str)
  str.split.reverse.join(', ')
end

p swap_name('Joe Roberts') == 'Roberts, Joe'