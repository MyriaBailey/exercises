# When does accidental method overriding occur, and why? Give an example.

=begin
Accidental method overriding can happen when a custom class creates
a method by the same name as an existing, generic method, such as `send`
or `display`, that the object inherits from (such as from the `Object`
class, or another superclass/mix-in).

This usually happens by forgetting what methods a class might have
access to, and writing a definition for a method of same name under a
different context as a result.

=end
