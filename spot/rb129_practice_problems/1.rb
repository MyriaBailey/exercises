class Person
  attr_reader :name
  
  def set_name
    @name = 'Bob'
  end
end

bob = Person.new
p bob.name

# What is output and why? What does this demonstrate about
# instance variables that differentiates them from local variables?

=begin
Line 10 prints `"nil"` to the console, because the `set_name` instance
method (defined on lines 4-6) had not been invoked, thus not printing
`"Bob"`, but it does not throw a `NameError` complaint due to instance
variables being explicitly clear they are a variable (and not potentially
a method), so even when undefined, calling `@name` within the defined
getter method `name` (from line 2, and invoked on line 10) has no
ambiguity to generate a `NameError`, and instead can clearly return
`nil`.

(Could be done better?)
=end

