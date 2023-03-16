=begin
Sum of Digits

Rules
I: a positive integer
O: the sum of its digits

- No basic looping constructs
  - (while, until, loop, and each)

Examples/Test Cases
puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

Data Structures
- An integer, separated into an array of digits
- A returned integer sum

Algorithms
A method that takes an integer
- Convert into an array of digits
- Sum the digits
=end

def sum(num)
  num.digits.sum
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45