# What does the above code
# demonstrate about how instance variables are scoped?

class Person
  def initialize(n)
    @name = n
  end
  
  def get_name
    @name
  end
end

bob = Person.new('bob')
joe = Person.new('joe')

puts bob.inspect # => #<Person:0x000055e79be5dea8 @name="bob">
puts joe.inspect # => #<Person:0x000055e79be5de58 @name="joe">

p bob.get_name # => "bob"

=begin
Instance variables are scoped at the object level, meaning that they
are unique to the object they are defined in. In this specific code,
two `Person` objects are instantiated, named `'bob'` and `'joe'`, with
these names stored as a `@name` instance variable. Because they belong
to two separate objects, however, the value of `@name` is unique to each
object, and creating a new object of a different name does not affect
the value of `@name` for the first object, seen with the last line
still showing the original value of `bob`'s name.
=end