# What are collaborator objects, and what is the purpose of 
# using them in OOP? Give an example of how we would work with one.

=begin
A collaborator object is an object contained by another object, either
through composition or aggregation. This is helpful for further
compartmentalization of state and behaviors to keep code more organized
and less dependent, or to have a collection with its own behaviors
separate from the behaviors of its contents.

An example of aggregation:
=end

class Garden
  def initialize
    @plants = []
  end

  def add_plant(plant)
    @plants << plant
  end
end

class Plant
end

rose = Plant.new
dandelion = Plant.new

my_garden = Garden.new
my_garden.add_plant(rose)
my_garden.add_plant(dandelion)
p my_garden

# And an example of composition

class Wings
  
end

class Bee
  def initialize
    wings = Wings.new
  end
end