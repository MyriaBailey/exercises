module Describable
  def describe_shape
    "I am a #{self.class} and have #{SIDES} sides."
  end
end

class Shape
  include Describable

  def self.sides
    self::SIDES
  end
  
  def sides
    self.class::SIDES
  end
end

class Quadrilateral < Shape
  SIDES = 4
end

class Square < Quadrilateral; end

p Square.sides 
p Square.new.sides 
p Square.new.describe_shape 


# What is output and why? What does this demonstrate about constant scope?
# What does `self` refer to in each of the 3 methods above?

# ~20 min
=begin
Line 25 calls for a class method `sides` on the class `Square`. While
the `Square` class has no methods of its own, it inherits from the
`Quadrilateral` superclass, which further inherits from the `Shape` class.

Inside `Shape` (defined lines 7-17), the class method `sides` is defined
on lines 10-12 and calls for the `SIDES` constant using the namespace
resolution operator on `self`. Because `self` in this instance (line 11)
refers to the `Square` class, the call for a constant checks the given
class source in `Square`, moving up the inheritance path to
`Quadrilateral` before finding the SIDES constant initialized and asigned
`4`. This is used for the return value of the `sides` class method, and
is what is output by the `p` method on line 25.

For line 26, the `sides` instance method is called on a new instance
of `Square`. Following the `Square` inheritance chain to `Quadrilateral`,
and then `Shape`, the instance method `sides` is then found to be
defined on lines 14-16, which invokes the constant `SIDES` specified by
the class of `self`. Since `self` is a `Square` object, calling the
`class` method returns the `Square` class instead, of which the constant
`SIDES` returns `4` for. This is the return value of the `sides` method,
that is then output by `p` on line 26.

On line 27, the `describe_shape` method is called on a new instance of
`Square`, which is defined by an included module on lines 2-4. Because
this method invokes the `SIDES` constant without specifying a namespace,
the constant attempts searching in a lexical scope starting from the
module `Describable` itself, only to not find a defined value for `SIDES`.
This returns an error, as the constant as not been defined yet in that
scope.

This demonstrates the differences in how the scope of constants is defined
by when and how they are called, as providing a namespace points it in a
specified direction to start from, whereas without a namespace, it searches
in a lexical scope starting from where it was invoked in-code, and does
not take into account the calling object's own starting point for
inheritance.
=end