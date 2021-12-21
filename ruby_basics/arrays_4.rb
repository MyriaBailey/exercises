=begin
Using the code below, select 'dog' from pets, add the return value to my_pets, then print the value of my_pets.
=end

pets = ['cat', 'dog', 'fish', 'lizard']

my_pet = [pets[2], pets[3]]
my_pet.pop
my_pet.push(pets[1])

puts "I have a pet #{my_pet[0]} and a #{my_pet[1]}!"