=begin
Rotation (Part 2)

Rules
I: An integer, and a number of digits from the right to be rotated
O: An integer, with the rightmost n digits rotated

- Rotating 1 digit returns the same number
- May use the rotate_array method from prev exercise
- Assume n is always a positive int

Examples/Test Cases
rotate_rightmost_digits(735291, 1) == 735291
rotate_rightmost_digits(735291, 2) == 735219
rotate_rightmost_digits(735291, 3) == 735912
rotate_rightmost_digits(735291, 4) == 732915
rotate_rightmost_digits(735291, 5) == 752913
rotate_rightmost_digits(735291, 6) == 352917

Data Structures
- An integer, converted to an arr of digits
- The last n digits isolated and modified
- The modified arr of digits rejoined

Algorithms
A method that takes two ints (num, n)
- convert the number to an arr of digits
- on the last n digits of the array, rotate once
- rejoin the array...
=end

def rotate_rightmost_digits(num, n)
  rotated = num.to_s.chars
  rotated << rotated.pop(n).rotate
  rotated.flatten.join.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917