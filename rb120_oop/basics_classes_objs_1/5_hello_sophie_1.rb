class Cat
  attr_accessor :name

  def initialize(name)
    self.name = name
    puts "Hello! My name is #{name}!"
  end
end

kitty = Cat.new("Sophie")