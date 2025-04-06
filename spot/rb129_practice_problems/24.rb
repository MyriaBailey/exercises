# What are the use cases for `self` in Ruby,
# and how does `self` change based on the scope it is used in?
# Provide examples.

=begin
`self` generally refers to the calling object, which means that it can
be used for many purposes within a program. Some of which include
distinguishing that a method definition is a class method,
distinguishing that a setter method is an instance method invocation
and not a local variable, or otherwise acting upon the calling object
directly, such as to access the name of its class.

Because `self` refers to the calling object, what precisely it might
refer to differs incredibly based on location. For example, when used
in outlining a class method definition, it refers to the class itself.
When used inside of an instance method, however, it will refer to whatever
instantiated object utilizes the method. When outside of any class at
all, simply in the main body of code, it will even refer to `main` itself.
=end

p self