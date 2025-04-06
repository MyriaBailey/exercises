class Animal
  def initialize(name)
    @name = name
  end
end

class Dog < Animal
  def initialize(name); end

  def dog_name
    "bark! bark! #{@name} bark! bark!"
  end
end

teddy = Dog.new("Teddy")
puts teddy.dog_name   


# What is output and why?

=begin
Because the `Dog` class has its own implementation of `initialize`
without using `super`, the `name` parameter is never assigned to the
`@name` instance variable on initialization.

This means that when `dog_name` is invoked on the `Dog` object
represented by `teddy` on line 16, the string interpolation for `@name`
on line 11 returns an empty string as `@name` returns nil.

Thus, `"bark! bark!  bark! bark!"` is output.
=end