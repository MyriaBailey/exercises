module Swimmable
  def enable_swimming
    @can_swim = true
  end
end

class Dog
  include Swimmable

  def swim
    "swimming!" if @can_swim
  end
end

teddy = Dog.new
p teddy.swim   


# What is output and why? What does this demonstrate about
# instance variables?

=begin
Line 16 returns `nil` because `@can_swim` is never defined nor set to
`true` for the `Dog` object `teddy`, thus not satisfying the `if`
statement on line 11.

(unsure what this demonstrates)


On line 16, the `p` method is called, and prints the return value of
calling the `swim` method on the `Dog` object referred to by local
variable `teddy`.

Inside the `Dog::swim` method defined on lines 10-12, the `if` statement
returns `nil` instead of the string, because `@can_swim` is never
defined, and evaluates as falsy. 

Because calling an undefined instance variable did not raise an error,
however, this demonstrates that Ruby can recognize instance variables
as being undefined and thus return `nil` instead of raising an error due
to being unable to find the method or variable referenced, as an undefined
local variable would.

=end
