class Animal
  def initialize
  end
end

class Bear < Animal
  def initialize(color)
    super
    @color = color
  end
end

bear = Bear.new("black")

# What is output and why? What does this demonstrate about `super`?

=begin
An `ArgumentError` is raised due to `Animal#initialize` receiving 
too many arguments (1 instead of 0). This demonstrates how when 
`super` does not have any arguments specified, it defaults to using 
all of the arguments its calling method provides. Since `Bear#initialize` 
has one parameter, `color`, but `Animal#initialize` has none, `super` 
attempts to pass along the value of `color` to a method that does not 
take any arguments at all, prompting an error.
=end