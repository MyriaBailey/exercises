=begin
from test cases:
- class BeerSong
- class method `verse` that takes one or more int arguments
  - int is the starting number of bottles, then int - 1
  - keeps in mind plurality!!! watch out for verse 2 and 1
  - unique verse for 0
- class method lyrics, no args, goes 99 -> 0

line 1:
- num = n if n != 0, else "No more"/"no more"
- bottle_plurality = (n == 1) ? "bottle" : "bottles"


- n bottles
  - "bottle" if n == 1
  - "No more bottles"/"no more bottles" if n == 0

=end

class BeerSong
  def self.verse(num_bottles)
      line_1(num_bottles) + line_2(num_bottles)
  end

  def self.verses(*bottles)
    all_verses = []

    bottles.first.downto(bottles.last) do |num_bottles|
      all_verses << verse(num_bottles)
    end

    all_verses.join("\n")
  end

  def self.lyrics
    verses(99, 0)
  end

  class << self
    private

    def line_1(n)
      num = (n != 0) ? n.to_s : "No more"
      bottles = (n == 1) ? "bottle" : "bottles"

      "#{num} #{bottles} of beer on the wall, " \
        "#{num.downcase} #{bottles} of beer.\n"
    end

    def line_2(n)
      part_1 = case n
      when 1 then "Take it down and pass it around"
      when 0 then "Go to the store and buy some more"
      else "Take one down and pass it around"
      end

      num = case n
      when 1 then "no more"
      when 0 then "99"
      else (n - 1).to_s
      end

      bottles = (n == 2) ? "bottle" : "bottles"

      "#{part_1}, #{num} #{bottles} of beer on the wall.\n"
    end
  end
end