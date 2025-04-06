class Animal
  def eat
    puts "I eat."
  end
end

class Fish < Animal
  def eat
    puts "I eat plankton."
  end
end

class Dog < Animal
  def eat
     puts "I eat kibble."
  end
end

def feed_animal(animal)
  animal.eat
end

array_of_animals = [Animal.new, Fish.new, Dog.new]
array_of_animals.each do |animal|
  feed_animal(animal)
end


# What is output and why? How does this code demonstrate polymorphism? 

=begin
As each animal object is passed into the `feed_animal` method on line 25,
the `eat` method is called on them, which uses that object's
implementation of an `eat` method.

This prints:
`I eat.`
`I eat plankton.`
`I eat kibble.`

Because each object here is either an `Animal` object, or of a class that
subclasses from `Animal`, all containing a variation of the `eat` method,
this is polymorphism through method overriding. The `eat` method is called
regardless of exact object type, being polymorphic, and the implementation
differs through method overriding, since they all use, or override the
`Animal#eat` method.
=end