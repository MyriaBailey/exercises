# Multiplicative Average

# Input: an arr of integers
# Output: the multiplied and divided 'average' of all elements in the arr
#   printed and rounded to 3 decimal places

# Rules
# - Take an array of integers (assume non-empty)
# - Multiply all the numbers together,
#     and divide the result by number of entries in the array
# - print result rounded to 3 decimal places

# Examples/Test Cases
# show_multiplicative_average([3, 5])                # => The result is 7.500
# show_multiplicative_average([6])                   # => The result is 6.000
# show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667

# Data Structures
# - An array of integers, each value multiplied together
#   - divide the result by the number of elements in the array

# Algorithms
# A method that takes an array of integers
# - mult_avg = multiply each integer together,
#     and divide result by the array size AS A FLOAT
# - format mult_avg to show 3 decimal places

# Code
def show_multiplicative_average(arr)
  mult_avg = arr.inject(:*) / arr.size.to_f
  puts format("%.3f", mult_avg)
end

show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667