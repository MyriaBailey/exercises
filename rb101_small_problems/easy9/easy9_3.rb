=begin
Counting Up

Input: an integer
Output: an array of all integers from 1 to the argument

Rules
- Assume argument always a valid int greater than 0
- Can be 1 and return [1]

Examples/Test Cases
sequence(5) == [1, 2, 3, 4, 5]
sequence(3) == [1, 2, 3]
sequence(1) == [1]

Data Structures
- A range of values
- converted to an array and returned

Algorithms
A method that takes an integer
- take a range from 1 to end_point (inclusive)
- convert to array
=end

def sequence(num)
  num > 0 ? (1..num).to_a : (num..1).to_a
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]