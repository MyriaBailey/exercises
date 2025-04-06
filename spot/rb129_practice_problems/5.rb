class GoodDog
  attr_accessor :name, :height, :weight

  def initialize(n, h, w)
    @name = n
    @height = h
    @weight = w
  end

  def change_info(n, h, w)
    name = n
    height = h
    weight = w
  end

  def info
    "#{name} weighs #{weight} and is #{height} tall."
  end
end


sparky = GoodDog.new('Spartacus', '12 inches', '10 lbs') 
sparky.change_info('Spartacus', '24 inches', '45 lbs')
puts sparky.info 
# => Spartacus weighs 10 lbs and is 12 inches tall.


# We expect the code above to output `”Spartacus weighs 45 lbs and
# is 24 inches tall.”` Why does our `change_info` method not work
# as expected?

=begin
5 min, easy

Because the `change_info` method on lines 10-14 does not directly specify
a reference to the object's instance variables instead, invoking the
method creates three new *local variables* that are initialized and
assigned values, rather than updating preexisting instance variables.

To fix this, prepending `@` or `self.` before each local variable would
convert them to instance variable calls (or getter methods) instead.

def change_info(n, h, w)
  self.name = n
  self.height = h
  self.weight = w
end
=end
