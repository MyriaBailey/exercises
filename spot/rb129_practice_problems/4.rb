class AnimalClass
  attr_accessor :name, :animals
  
  def initialize(name)
    @name = name
    @animals = []
  end
  
  def <<(animal)
    animals << animal
  end
  
  def +(other_class)
    all_animals = animals + other_class.animals
    all_animals.map { |animal| animal.name }
  end
end

class Animal
  attr_reader :name
  
  def initialize(name)
    @name = name
  end
end

mammals = AnimalClass.new('Mammals')
mammals << Animal.new('Human')
mammals << Animal.new('Dog')
mammals << Animal.new('Cat')

birds = AnimalClass.new('Birds')
birds << Animal.new('Eagle')
birds << Animal.new('Blue Jay')
birds << Animal.new('Penguin')

some_animal_classes = mammals + birds

p some_animal_classes 


# What is output? Is this what we would expect when using `AnimalClass#+`?
# If not, how could we adjust the implementation of `AnimalClass#+`
# to be more in line with what we'd expect the method to return?

=begin
~10 min, tripped up over how to describe the Not object ID
~5 min to fix realization that the problem wanted to address `+` not
`to_s`, and then fix 

In this example, by line 38, the local variable `some_animal_classes`
would contain an array with many `Animal` class objects. When `p` is
invoked on an array, the contents of the array are printed with
`[obj1, obj2, ... ]` structure. Since the array contains `Animal` objects,
however, the objects will be displayed using `inspect` instead of their
respective values for their instance variable `@name`.

To fix this, a `map` method could be called on the concatted array
on line 14, in order to convert each element of the array to its
respective `@name` value.

For example:
  def +(other_class)
    all_animals = animals + other_class.animals
    all_animals.map { |animal| animal.name }
  end
=end
