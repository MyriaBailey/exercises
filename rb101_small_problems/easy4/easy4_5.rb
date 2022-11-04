# Multiples of 3 and 5

# Input: an integer greater than 1
# Output: an integer sum of all its multiples of 3 or 5 in a range

# Rules
# - For a provided range from 1 to some number (inclusive),
#   - Add a running sum of each multiple of 3 or 5 along that range
# - Return the sum

# Examples/Test Cases
# multisum(3) == 3
# multisum(5) == 8
# multisum(10) == 33
# multisum(1000) == 234168

# Data Structures
# - iterating over a range to search for matching values
# - adding matching values to a single sum

# Algorithms
# A method that takes an integer 'num' and returns a sum integer:
# - initialize 'sum' as 0
# - For each value on a range from 1 to 'num' (inclusive):
#   - add value to sum if 'val' is evenly divisible by 3 OR 5
# - return sum

# Code

def multisum(num)
  sum = 0
  for i in 1..num
    if (i % 3 == 0) || (i % 5 == 0)
      sum += i
    end
  end
  sum
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168

# Concluding Notes
# - I'd like to condense this further if possible?