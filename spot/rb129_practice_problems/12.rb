class Person
  attr_accessor :name, :pets

  def initialize(name)
    @name = name
    @pets = []
  end
end

class Pet
  def jump
    puts "I'm jumping!"
  end
end

class Cat < Pet; end

class Bulldog < Pet; end

bob = Person.new("Robert")

kitty = Cat.new
bud = Bulldog.new

bob.pets << kitty
bob.pets << bud                     

bob.pets.jump 


# We raise an error in the code above. Why? What do `kitty` and
# `bud` represent in relation to our `Person` object?  

=begin
A NoMethodError is raised on the final line, because `bob.pets` returns
an *array* of pets, and `Pet#jump` can only be called on an individual
`Pet` object. This could be solved with an implementation of the `each`
method (such as `bob.pets.each { |pet| pet.jump }`)

=end
