=begin
arr of letters [a..z]
each letter has an index

for each encrypted letter: find index of letter
  return space if space. or as-is if not included

  add 13 to the found index
  if greater than 26: -= 26
  return/map letter of adjusted index
=end

def rot13(str)
  alphabet = ('a'..'z').to_a
  letters = str.downcase.chars

  letters.map! do |char|
    next char unless alphabet.include?(char)

    idx = alphabet.find_index(char) + 13
    idx < 26 ? alphabet[idx] : alphabet[idx - 26]
  end

  letters.join
end

p rot13('Nqn Ybirynpr')
p rot13('Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv')