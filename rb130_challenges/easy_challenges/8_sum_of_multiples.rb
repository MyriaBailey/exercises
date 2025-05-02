=begin
given a natural number (positive integer?)
and a set of one+ other numbers,

find the sum of all the multiples in the set
that are less than the first number

if no set given, use [3, 5]

if num is 20, and set is [3, 5], then find all multiples of 3 or 5
  that are less than 20. Being 3, 5, 6, 9, 10, 12, 15, and 18.
  the sum of these is 78.

from test cases:
- class SumOfMultiples
- instance method `to` that takes a number n (uses default set)
- can create a new SumOfMultiples instance that takes a set
=end

class SumOfMultiples
  def initialize(*set)
    @set = (set.empty?) ? [3, 5] : set
  end

  def to(limit)
    (1...limit).select do |n|
      set.any? { |multiple| n % multiple == 0 }
    end.sum
  end

  def self.to(limit)
    SumOfMultiples.new().to(limit)
  end

  private

  attr_reader :set
end