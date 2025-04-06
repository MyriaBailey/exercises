# How and why would we implement a fake operator in a custom class?
# Give an example.

=begin
Fake operators are useful for adding more natural functionality and
syntactical sugar for custom classes. For example, `==` can be
redefined to compare two object's values, instead of the default behavior
to compare object IDs.
=end

class Insect
  attr_reader :species

  def initialize(s)
    @species = s
  end

  def ==(other)
    species == other.species
  end
end

butterfly = Insect.new("Monarch Butterfly")
other_butterfly = Insect.new("Monarch Butterfly")
moth = Insect.new("Lunar Moth")

puts butterfly == other_butterfly # True
puts butterfly == moth # False