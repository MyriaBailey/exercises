=begin
Why is it generally safer to invoke a setter method (if available)
vs. referencing the instance variable directly when trying to set
an instance variable within the class? Give an example.
=end


class Person
  attr_reader :name

  def name=(n)
    @name = n.capitalize
  end
end

susan = Person.new
susan.name = "suSan"
puts susan.name # "Susan"

=begin
Setter methods can implement their own formatting rules in one
place instead of having to manually format each time you call the
method.

In this example, any string name can be provided as an argument to
the setter method name=, and it will be automatically formatted to
have only the first letter capitalized. This can catch typos,
inconsistent input, and prevent having to look up each time what
the preferred formatting rules are.

Input validation could also be implemented inside the setter method,
to prevent something erroneous being set (such as an incompatible
class of object), that might cause more confusing errors down the
line.
=end

class Bug
  attr_reader :num_legs

  def num_legs=(n)
    @num_legs = n.to_i
  end
end

cicada = Bug.new
string_legs = "6"

cicada.num_legs = string_legs

p cicada.num_legs > 5 # true
p string_legs > 5 # ArgumentError, comparison failed

=begin
In this example, the num_legs= setter method automatically converts
the string argument "6" into its integer form by using to_i. This
ensures that later on in the code, the value of num_legs can properly
interact with other integers (such as on the second to last line)
without causing an error or misleading answer that an unformatted
String value might have (such as on the last line).

Implementing formatting or error raising as part of the setter method
can help prevent or catch bugs early on that might arise due to
incorrectly formatted inputs. 
=end
