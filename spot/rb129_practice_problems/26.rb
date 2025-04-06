# How do class inheritance and mixing in modules affect
# instance variable scope? Give an example.

=begin
Class inheritance and mixin modules can provide inherited behaviors for
a given object. Because these behaviors are accessible to the given
object, the scope of an instance variable within it is extended to all
instance methods also available to that object.

For example:
=end

class Arthropod
  attr_reader :num_legs

  def initialize
    @num_legs = "unknown"
  end

  def describe
    puts "I have #{num_legs} legs."
  end
end

class Insect < Arthropod
  def initialize
    @num_legs = 6
  end
end

stinkbug = Insect.new
stinkbug.describe

# centipede = Arthropod.new
# centipede.describe

=begin
In this example, an object assigned to the local variable `stinkbug` is
created from the `Insect` class, which subclasses from the `Arthropod`
class. In doing so, `Insect` objects have access to the `Arthropod` method
`describe`, which invokes the value of the instance variable `@num_legs`.

Because instance variables are scoped at the object level, and an `Insect`
object has access to these methods as part of its available behaviors,
the value of `@num_legs` is still accessible within these inherited
methods.
=end
