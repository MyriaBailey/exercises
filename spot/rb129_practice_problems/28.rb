class GoodDog
  DOG_YEARS = 7

  attr_accessor :name, :age

  def initialize(n, a)
    self.name = n
    self.age  = a * DOG_YEARS
  end

  def to_s # added
    "My name is #{name} and I am #{age} years old."
  end
end

sparky = GoodDog.new("Sparky", 4)
puts sparky


# What is output and why? How could we output a message of our
# choice instead?

=begin
Because `puts` uses the default string interpretation of an object,
which does not reveal all of its state, it will reveal only the class
and encoding of the object.

Instead, a custom `to_s` method could be defined for the class, to
create a more readable presentation with the information desired.
=end