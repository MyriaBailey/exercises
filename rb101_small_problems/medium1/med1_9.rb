# Fibonacci Numbers (Procedural)

=begin

I: integer n requesting nth fib sequence number
O: nth fib sequence number

Rules

- Write a procedural (non-recursive) method for the fib sequence 

Examples and Test Cases

fibonacci(20) == 6765
fibonacci(100) == 354224848179261915075
fibonacci(100_001) # => 4202692702.....8285979669707537501

Data Structures

F(n) = F(n - 1) + F(n - 2) where n > 2

0 + 1 = 1 ("2nd")

1 + 1 = 2 (3rd, add once)
1 + 2 = 3
2 + 3 = 5

n <= 2: 1
n - 2 times do: add contents of memo [1, 1]. memo now [memo1, sum of memo]

Algorithms

A method that takes an integer n:
- Return 1 if n <= 2
- memo = [1, 1]
- n - 2 times, do:
  - memo = [memo[1], memo0 + memo1]
- return memo
=end

def fibonacci(n)
  return 1 if n <= 2
  memo = [1, 1]
  (n - 2).times { |_| memo = [memo[1], memo.sum] }
  memo.last
end

p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
p fibonacci(100_001) # => 4202692702.....8285979669707537501