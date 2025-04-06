# What is the difference between instance methods and class methods?

=begin
Instance methods are methods called upon an instance of a class,
whereas class methods are methods called upon a class itself.
Typically, instance methods involve a specific object's behaviors,
within a context specific to that object, whereas class methods
address information or behavior that is not unique to any one instance.

For example:

=end
class Insect
  def initialize(n)
    @num_legs = n
  end

  def num_legs
    @num_legs
  end

  def self.num_legs
    6
  end
end

injured_insect = Insect.new(5)
p injured_insect.num_legs # 5
p Insect.num_legs # 6

=begin
In this example, a specific instance of an `Insect` might have an
unusual number of legs due to an injury or some such, affecting its
current state, whereas one of the defining traits of any `Insect`
is having `6` legs by default.

This means that for comparing the leg count between two different
classes, like `Insect` and a hypothetical `Arachnid` class, the
class method getter would be used to compare these overarching
qualities. However, for comparing the `injured_insect` to a
hypothetical `healthy_insect`, the instance method getter would
be used instead.
=end