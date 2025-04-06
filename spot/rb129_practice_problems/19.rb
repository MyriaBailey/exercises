# What is the `attr_accessor` method, and why wouldn’t we want to
# just add `attr_accessor` methods for every instance variable in our
# class? Give an example.

=begin
The `attr_accessor` method is a shorthand method for creating a new
getter and setter method for each instance variable provided. However,
some attributes are either private, or unchanging, and thus would not
want to allow the possibility of reading/writing information that
should be inaccessible.

For example:

=end
class Insect
  attr_reader :species

  def initialize(s)
    @species = s
  end
end

bug = Insect.new("Cicada")
bug.species # "Cicada"
bug.species = "Ant" # Error

=begin
In this example, an `Insect` object is created, and is provided a
`species` name, `"Cicada"`. Because it would not make sense for a
cicada to turn into an ant, there should not be a setter method to
allow such. Changing `attr_accessor` into `attr_reader` instead
removes this capability and protects the code from undesirable changes.
=end