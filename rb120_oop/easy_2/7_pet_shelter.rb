class Shelter
  attr_accessor :owners, :number_of_pets

  def initialize
    self.owners = []
    self.number_of_pets = 0
  end

  def adopt(owner, pet)
    owners << owner unless owners.include?(owner)

    Pet.unadopted_pets.delete(pet)
    owner.pets.push(pet)
  end

  def print_adoptions
    owners.each do |owner|
      puts "#{owner.name} has adopted the following pets:"
      puts owner.pets
      puts ''
    end
  end

  def print_unadopted_pets
    puts "The Animal Shelter has the following unadopted pets:"
    puts Pet.unadopted_pets
    puts ''
  end

  def number_of_pets
    Pet.unadopted_pets.size
  end
end

class Owner
  attr_accessor :name, :pets

  def initialize(name)
    self.name = name
    self.pets = []
  end

  def number_of_pets
    pets.size
  end
end

class Pet
  attr_accessor :species, :name

  @@unadopted_pets = []

  def self.unadopted_pets
    @@unadopted_pets
  end

  def initialize(species, name)
    self.species = species
    self.name = name
    @@unadopted_pets << self
  end

  def to_s
    "a #{species} named #{name}"
  end
end


butterscotch = Pet.new('cat', 'Butterscotch')
pudding      = Pet.new('cat', 'Pudding')
darwin       = Pet.new('bearded dragon', 'Darwin')
kennedy      = Pet.new('dog', 'Kennedy')
sweetie      = Pet.new('parakeet', 'Sweetie Pie')
molly        = Pet.new('dog', 'Molly')
chester      = Pet.new('fish', 'Chester')

phanson = Owner.new('P Hanson')
bholmes = Owner.new('B Holmes')

shelter = Shelter.new
shelter.adopt(phanson, butterscotch)
shelter.adopt(phanson, pudding)
# shelter.adopt(phanson, darwin)
shelter.adopt(bholmes, kennedy)
shelter.adopt(bholmes, sweetie)
# shelter.adopt(bholmes, molly)
# shelter.adopt(bholmes, chester)
shelter.print_adoptions

shelter.print_unadopted_pets

puts "#{phanson.name} has #{phanson.number_of_pets} adopted pets."
puts "#{bholmes.name} has #{bholmes.number_of_pets} adopted pets."
puts "The Animal shelter has #{shelter.number_of_pets} unadopted pets."

=begin
P Hanson has adopted the following pets:
a cat named Butterscotch
a cat named Pudding
a bearded dragon named Darwin

B Holmes has adopted the following pets:
a dog named Molly
a parakeet named Sweetie Pie
a dog named Kennedy
a fish named Chester

P Hanson has 3 adopted pets.
B Holmes has 4 adopted pets.
=end