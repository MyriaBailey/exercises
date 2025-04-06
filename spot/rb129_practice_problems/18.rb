class Shape
  @@sides = nil

  def self.sides
    @@sides
  end

  def sides
    @@sides
  end
end

class Triangle < Shape
  def initialize
    @@sides = 3
  end
end

class Quadrilateral < Shape
  def initialize
    @@sides = 4
  end
end

p Triangle.sides
puts Triangle.new.sides
puts Triangle.sides
puts Quadrilateral.new.sides
puts Triangle.sides

=begin
When executing `Triangle.sides` first, the return value of the
class variable `@@sides` is `nil` because it has not been
  initialized to a different value yet. After initialization
  is performed through `Triangle.new.sides`, the value of `@@sides`
  is set to `3`, and both methods will return this value now.

However, if a `Quadrilateral` object is created, the `Triangle.sides`
method call will return `4` instead, whereas `Triangle.new.sides`
will only ever return `3` still.

This is due to class variables being shared among all instances and
subclasses of the class, so when the value of one class variable is
changed anywhere, it is changed everywhere.
=end
