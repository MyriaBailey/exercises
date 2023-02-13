# Letter Counter (Part 2)

# Same as last, but do NOT count non-alphabetic characters in each word.

# Algorithms
# - For each word, remove non-alphabetic chars, THEN add to hash as usual

def word_sizes(str)
  sizes = Hash.new(0)
  str.split.each do |word| 
    sizes[word.delete('^A-Za-z').length] += 1
  end
  sizes
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}

# Concluding Notes
# - Originally used `gsub(/[^a-zA-Z]/, '')`
# - Much cleaner to use delete, instead (albeit took some extra processing)