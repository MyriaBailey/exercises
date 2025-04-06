class Animal
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

class GoodDog < Animal
  def initialize(color)
    super
    @color = color
  end

  # def to_s
  #   @name
  # end
end

bruno = GoodDog.new("brown")       
p bruno
puts bruno

# What is output and why? What does this demonstrate about `super`?

=begin
When the `GoodDog` object is instantiated on the second to last line, 
the string argument `"brown"` is passed along and assigned to the 
initialization parameter `color`. When the keyword `super` is called 
without specifying arguments, it passes along the calling method's 
arguments to the next higher method in the inheritance chain by the 
same name, in this case being `Animal#initialize`. Since the `color` 
parameter is passed in as the `name` argument, that value is assigned 
to the instance variable `@name`, before returning back to the 
`GoodDog#initialize` method and assigning `color` to the instance 
variable `@color` as well.

Once initialization is complete and this object is passed along to 
the `p` method as an argument, `p` prints out the object's state 
details to the console, which includes that `@name` references 
`"brown"`, and so does `@color`.

This demonstrates that `super` invokes the next instance of the 
method name in the inheritance chain, before returning to finish 
the method call that invoked `super`.
=end