=begin
Rotation (Part 3)

Rules
I: an integer
O: The maximum rotation of that argument

- Maximum Rotation is when you rotate the first digit, keep the new
  first digit in place, rotate the remaining digits, keep the first
  and second digits in place, and so on until all digits are frozen
- Take an int and return the maximum rotation of it
- Recommended to use the prior rotate_rightmost_digits method
- Do not have to handle multiple 0s

Examples/Test Cases
max_rotation(735291) == 321579
max_rotation(3) == 3
max_rotation(35) == 53
max_rotation(105) == 15 # the leading zero gets dropped
max_rotation(8_703_529_146) == 7_321_609_845

Data Structures
- An integer, split into an array of... strings
- Modified array of string digits, rejoined into an int

Algorithms
A method that takes an integer
- initialize an arr of string digits from the provided number
- for a number of times equivalent to size, going down,
  - call rotate_rightmost_digits in a mutating/updating fashion,
    where n digits is idx, going from high to low
=end

def rotate_rightmost_digits(num, n)
  rotated = num.to_s.chars
  rotated << rotated.pop(n).rotate
  rotated.flatten.join.to_i
end

def max_rotation(num)
  num.to_s.size.downto(1) do |idx|
    num = rotate_rightmost_digits(num, idx)
  end
  num
end


p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845