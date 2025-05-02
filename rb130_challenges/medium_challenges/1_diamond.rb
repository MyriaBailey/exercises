=begin
Program takes a letter as input
prints out a diamond shape that
- starts with 'A'
- goes to widest point at given letter
- goes back down to 'A'

Rules
- first and last rows contain one 'A'
- all rows (except first/last) contain exactly 2 identical letters
- horizontally and vertically symmetric
- width == height
- A -> given letter -> A

From test cases:
- class Diamond
- class method `make_diamond` that takes str arg
- only testing with valid letters
- all string return values, not puts
- single letter 'A' returns "A\n", no diamond
- every single line ends in \n, even the final lines

Notes:
('A'..'Z').to_a
using index (find_index), A = 0, C = 2, Z = 25

For the letter C given:
first row has 2 spaces, 'A', 2 spaces
second row: 1 space, 'B', 1 space, 'B', 1 space
third row: 'C', 3 spaces, 'C'

- First row spaces == idx of given letter on left and right sides
- 2nd row: idx - 1 on left/right sides, middle == 1
- 3rd row: middle space increases by 2, while edges - 1

Ideas:
- create array of top half strings, concat with self reversed, uniq

edge_counter = found idx of given letter
mid_counter = -1? will += 2 (note: error if str * -1)

for each/map letter in slice from 'A'/0 to given letter:
- edge_spaces = ' ' * edge_counter
- if letter = 'A'
  - edge_spaces + letter + edge spaces
  else:
  - mid_spaces = ' ' * mid_counter
  - edge_spaces + letter + mid_spaces + letter + edge spaces
- -= 1 edge counter, += 2 mid counter
- return string + \n

map the letter slice, concat reversed self to self and uniq

NOT uniq actually. slice to remove the last value of 2nd half

=end

class Diamond
  LETTERS = ('A'..'Z').to_a

  def self.make_diamond(mid_letter)
    midpoint = LETTERS.find_index(mid_letter)
    edge_counter = midpoint
    mid_spaces = ' '

    half = LETTERS[0..midpoint].map do |letter|
      edge_spaces = ' ' * edge_counter
      edge_counter -= 1
      str = ''

      if letter == 'A'
        str = edge_spaces + letter + edge_spaces
      else
        str = edge_spaces + letter + mid_spaces + letter + edge_spaces
        mid_spaces += '  '
      end
      "#{str}\n"
    end

    (half + half[0...-1].reverse).join
  end
end
