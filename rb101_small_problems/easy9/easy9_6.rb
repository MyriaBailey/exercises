=begin
Sequence Count

Rules
Input: Two integers, a count and first num of a sequence
Output: An arr of same num elements as count, with vals be multiples
  of starting num

- Count always have val of 0 or more
- Starting num can be any int value
- Count 0 returns empty list

Examples/Test Cases
sequence(5, 1) == [1, 2, 3, 4, 5]
sequence(4, -7) == [-7, -14, -21, -28]
sequence(3, 0) == [0, 0, 0]
sequence(0, 1000000) == []

Data Structures
- a range of numbers for array size, with mapped value

Algorithms
A method that takes two integers, count and first value
- on a range of 1 to count, as an array, map so that
  - num is current value * first value
=end

def sequence(count, first)
  (1..count).map {|num| num * first }
end

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []