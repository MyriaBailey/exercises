=begin
Now I Know My ABCs

I: a string word
O: true or false

Rules
- Provided a list of "blocks" composed of 2 letters
- Determine if a given word can be spelled using the blocks
  - Each block can only be used once
  - Cannot use both letters from a block
- Case does not matter

Examples/Test Cases

Blocks:
  B:O   X:K   D:Q   C:P   N:A
  G:T   R:E   F:S   J:W   H:U
  V:I   L:Y   Z:M
  + R:D

Test cases:
block_word?('BATCH') == true
block_word?('BUTCH') == false
block_word?('jest') == true

Data Structures
- Nested array of blocks (subarrays) containing two string characters each

If duplicate letter blocks existed...
- Different option trees must be created, perhaps shortcircuiting true if
an answer is found
- When a matching block is found, add the next sequential step in the array
to a solution_trees array
- for each letter: for each solution tree: 

---
Other option:
Filter the blocks array to discard entirely unused blocks
Create nested array of all remaining possible permutations(?)



Algorithms

filter blocks for unused blocks
- verify all (uppercased) chars DO exist in [A-Z]
- relevant_blocks = select only blocks which contain a used character


create empty solution_trees
create initial new_trees

verify for each letter of the (uppercased) word:
- solution_trees = new_trees
- clear new_trees

- verify at least one true, for each existing solution tree:
  - select all the blocks that contain that letter
  - if there are matching blocks:
    - for each block in that selection:
      - add to the new trees: current tree minus that block
    - true
  - else: false

=end

BLOCKS = [
  ['B', 'O'], ['X', 'K'], ['D', 'Q'], ['C', 'P'], ['N', 'A'],
  ['G', 'T'], ['R', 'E'], ['F', 'S'], ['J', 'W'], ['H', 'U'],
  ['V', 'I'], ['L', 'Y'], ['Z', 'M'], ['R', 'D']
]

def block_word?(word)
  letters = word.upcase.chars
  return false if letters.any? { |char| !('A'..'Z').include?(char) }

  solution_trees = []
  new_trees = []
  new_trees << BLOCKS.reject { |block| (block & letters).empty? }
  return false if letters.size > new_trees.first.size

  letters.all? do |letter|
    solution_trees, new_trees = new_trees, []

    solution_trees.any? do |blocks|
      matching_blocks = blocks.select { |block| block.include?(letter) }

      if matching_blocks.any?
        matching_blocks.each do |match|
          new_trees << blocks.reject { |block| block == match }
        end
        true
      else
        false
      end
    end
  end
end

p block_word?('test')

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true

=begin
Ended up way more complex than likely necessary, all in the attempt to
allow room for expansion should the list of blocks contain repeating
letters.

Still, it seems to work anyway. But will likely come back to later in
hopes of finding a simpler solution.
=end