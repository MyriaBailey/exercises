class Person
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def ==(other)
    name == other.name
  end
end

al = Person.new('Alexander')
alex = Person.new('Alexander')
p al == alex # => true

p al.equal?(alex)
p al.eql?(alex)

p (al.name.equal?(alex.name))


# In the code above, we want to compare whether the two objects
# have the same name. `Line 11` currently returns `false`. How could
# we return `true` on `line 11`? 

# Further, since `al.name == alex.name` returns `true`, does this
# mean the `String` objects referenced by `al` and `alex`'s `@name`
# instance variables are the same object? How could we prove our case?

=begin
Because the inherited `==` method is comparing the objects as a whole
with each other, in order to compare only the object's `@name` instance
variable, the `==` method must be overridden to specify what is being
compared.

To fix this, one could add:
```ruby
def ==(other)
  name == other.name
end
```

Regarding the true equality of the `String` objects, this can be
determined through the use of `equal?` or comparing the object IDs
directly. When inspected this way, the differing object IDs indicates
they are not the same `String` objects.
=end