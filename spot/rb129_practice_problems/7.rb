class Vehicle
  @@wheels = 4

  def self.wheels
    @@wheels
  end
end

p Vehicle.wheels                             

class Motorcycle < Vehicle
  @@wheels = 2
end

p Motorcycle.wheels                           
p Vehicle.wheels                              

class Car < Vehicle; end

p Vehicle.wheels
p Motorcycle.wheels                           
p Car.wheels     


# What does the code above output, and why? What does this demonstrate
# about class variables, and why we should avoid using class variables
# when working with inheritance?

=begin
~8 min

On line 9, the `p` method prints `4``, because the `@@wheels` class
variable has not been modified yet.

On lines 15 and 16, the `p` method prints `2` because the `Motorcycle`
class inherits the same `@@wheels` class variable, and changes the value
referenced by it to `2` on line 12. This affects all classes that share
this variable.

On the last three lines, the `p` method continues to print `2` for each
of them, since `Car` also inherits from `Vehicle` and shares the same
class variable.

This demonstrates that class variables are shared between all classes that
inherit them, instead of being overridden by a subclass-specific value.
Since one change to the class variable in a subclass can affect other
subclasses elsewhere, this can be dangerous and hold unintended
side-effects.
=end
