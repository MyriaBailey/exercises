=begin
for each int 1.. half point,
  if n % current num == 0:
    push current num to low_end
    unshift (n/current num) to high_end
low_end + high_end
=end

def divisors(n)
  # low_end = []
  # high_end = []
  # mid_point = (n / 2).to_i + 1

  # (1..mid_point).each
  # eh. easier brute force method, why not:

  (1..n).select { |divisor| n % divisor == 0 }
end


p divisors(1) == [1]
p divisors(7) == [1, 7]
p divisors(12) == [1, 2, 3, 4, 6, 12]
p divisors(98) == [1, 2, 7, 14, 49, 98]
p divisors(99400891) == [1, 9967, 9973, 99400891] # may take a minute