=begin
each natural number (positive integer?) can fit into 1 of 3 categors
- abundant, perfect, or deficient
based on comparison btwn num and the sum of its positive divisors
(the nums that can be evenly divided into the target number,
excluding the num itself)

Positive divisors of 15 are 1, 3, and 5. The sum of such is the
Aliquot sum.

- Perfect have an == aliquot sum
- abundant have a larger aliquot sum than the original num
- deficient have a smaller aliquot sum than the original num

From test cases
- class PerfectNumber
- class method classify
- StandardError raised when given a negative number

Finding divisors:
- on a range from 1 to (target num / 2 + 1)
  - select only the nums that == 0 when target num % n
=end

class PerfectNumber
  def self.classify(n)
    raise StandardError unless valid_num?(n)

    aliquot = divisors(n).sum

    if aliquot == n then 'perfect'
    elsif aliquot > n then 'abundant'
    elsif aliquot < n then 'deficient'
    end
  end

  class << self
    private

    def valid_num?(n)
      n.is_a?(Integer) && n >= 1
    end

    def divisors(n)
      (1..(n / 2 + 1)).select { |divisor| n % divisor == 0 }
    end
  end
end