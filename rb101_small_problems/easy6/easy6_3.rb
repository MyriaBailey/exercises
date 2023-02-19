# Fibonacci Number Location By Length

# Input: An integer specifying a number of digits
# Output: The index of the first Fibonacci number with that many digits

# Rules
# - Fibonacci series has first two numbers 1 by definition, and then each
#     subsequent number is the sum of the previous two numbers
# - Example: 1, 1, 2, 3, 5, 8, 13, 21
# - When given an integer representing a number of digits
#   - return the index of the first fibonacci number
#       that has that number of digits.
# - First fibonacci number has index 1, not 0. This means 2 is idx 3
# - Assume the argument is always greater than or equal to 2

# Examples/Test Cases
# find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
# find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
# find_fibonacci_index_by_length(10) == 45
# find_fibonacci_index_by_length(100) == 476
# find_fibonacci_index_by_length(1000) == 4782
# find_fibonacci_index_by_length(10000) == 47847

# Data Structures
# - A running count of the index, and the corresponding fib. num.
# - A loop, incrementing both until it hits desired number of digits

# Algorithms
# A method that takes an int representing a number of digits
# - initialize index variable = 2
# - initialize prev and previous prev to 1
# - until current fib num to string's length is equal to or greater
#   than the number of digits provided,
#   - idx += 1
#   - prevprev, prev = prev, (prev + prevprev)
# - return idx

# Code

def find_fibonacci_index_by_length(num_digits)
  idx = 2
  previous_prev, prev = 1, 1

  until prev.to_s.length >= num_digits
    idx += 1
    previous_prev, prev = prev, (prev + previous_prev)
  end
  idx
end

p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847