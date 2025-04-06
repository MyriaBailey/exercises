class Person
  attr_accessor :name

  def initialize(name)
    @name = name
  end
  
  def change_name
    name = name.upcase
  end
end

bob = Person.new('Bob')
p bob.name 
bob.change_name
p bob.name


# In the code above, we hope to output `'BOB'` on `line 16`. Instead,
# we raise an error. Why? How could we adjust this code to output `'BOB'`? 

=begin
~6 min, easy

A `NoMethodError` complaint is raised on line 9, because Ruby initializes
the local variable `name` *first* (with a value of `nil`), and when it
is called a moment later with the `upcase` method, the method prioritizes
the new local variable `name` instead of the desired instance variable
`@name`, only to not find an `upcase` method for a `nil` object.

This could be fixed by prepending `@` or `self.` to the beginning of
line 9 in order to convert it into an instance variable reference
or getter method call.

Ex:
  def change_name
    self.name = name.upcase
  end
=end
