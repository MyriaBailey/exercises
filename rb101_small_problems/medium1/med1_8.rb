# Fibonacci Numbers (Recursion)

=begin

Rules

I: integer n, requesting the nth number of the fibonacci sequence
O: integer representation of the nth number of the fibonacci sequence

- Must implement recursion
- n 1 and 2 return 1, while n3 returns 2 (1+1), n4 = 3 (1+2)
- the fibonacci method should return the desired integer value

Examples and Test Cases:

fibonacci(1) == 1
fibonacci(2) == 1
fibonacci(3) == 2
fibonacci(4) == 3
fibonacci(5) == 5

fibonacci(12) == 144
fibonacci(20) == 6765

Data Structures

F(n) = F(n - 1) + F(n - 2) where n > 2

1 + 1 = 2
1 + 2 = 3
2 + 3 = 5

Algorithms

Method `fibonacci` that takes an integer n
- The return value is referred to as F(n)
- if n <= 2 return 1
- else: return fib(n - 1) + fib(n - 2)

=end

def fibonacci(n)
  return 1 if n <= 2
  fibonacci(n - 1) + fibonacci(n - 2)
end

p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5