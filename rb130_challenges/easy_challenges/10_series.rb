=begin
take string of digits
return all possible consecutive number series of a specified length
in that string
throw error if too long per string

from test cases
class Series
- initialization takes a string
- returns a nested array of ints
- slices instance method, takes an int
- raises ArgumentError if length longer than string

number of times = total length (4) - substring length (3) + 1 = 2
=end

class Series
  def initialize(str)
    @str = str
  end

  def slices(length)
    raise ArgumentError unless length <= str.length
    num_substrings = str.length - length + 1
    substrings = []

    num_substrings.times do |n|
      substrings << str[n, length]
    end

    substrings.map { |substr| substr.chars.map(&:to_i) }

  end

  private

  attr_reader :str
end