=begin
Goal: count the hamming distance (number of mutation diffs) between
two strands of DNA

ie, when comparing char by char, how many mutations are there?

From reading test cases:
- Creating a DNA class object (takes a string)
- DNA objects have `hamming_distance` (also takes a string)
- hamming distance returns 0 when empty string
- only counts up to the shorter string length (ignores extra chars)
- does not mutate the strings

idea:
- when given a comparison string, find the shorter length
- for each char (of shorter) with index:
  - add +1 to counter when chars not ==
- return counter
=end

class DNA
  attr_reader :strand

  def initialize(strand)
    @strand = strand
  end

  def hamming_distance(other_strand)
    strands = [strand, other_strand].sort_by(&:length)
    counter = 0

    strands.first.chars.each_with_index do |char, idx|
      counter += 1 unless char == strands.last[idx]
    end

    counter
  end
end

