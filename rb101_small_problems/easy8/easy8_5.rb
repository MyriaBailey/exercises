# Fizzbuzz

# Input: A starting number, and ending number
# Output: Each number printed, but those divisible by 3 replaced by Fizz,
#   those divisible by 5 replaced by Buzz, and divisible by both FizzBuzz

# Rules
# - Print all numbers in the range
#   - Print Fizz instead of numbers divisible by 3
#   - Print Buzz instead of numbers divisible by 5
#   - Print FizzBuzz instead of numbers divisible by 3 and 5
# - Assume non-empty argument, of valid range, presumably

# Examples/Test Cases
# fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

# Data Structures
# - A range of numbers iterated over
#   - A control expression determining what to print

# Algorithms
# A method that takes two integers
# - On a range from the starting integer up to the ending integer...
#   - If current number is divisible by 3 AND 5, print FizzBuzz
#   - Else, if divisible by 3, print Fizz
#   - Else, if divisible by 5, print Buzz
#   - Else, print current number

# Code
def fizzbuzz(start_num, end_num)
  start_num.upto(end_num) do |num|
    if (num % 3 == 0) && (num % 5 == 0)
      puts 'FizzBuzz'
    elsif num % 3 == 0
      puts 'Fizz'
    elsif num % 5 == 0
      puts 'Buzz'
    else
      puts num
    end
  end
end

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

# Concluding Notes
# - Misunderstood output to be shorthand, rather than one long string
#     printed only once.
# - Changing it would only be a matter of adding each result to an
#     array and joining it together accordingly, but I'll leave it as-is
#     for now.