class Person
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def to_s
    "My name is #{name.upcase!}."
  end
end

bob = Person.new('Bob')
puts bob.name
puts bob
puts bob.name

# What is output on `lines 14, 15, and 16` and why?

=begin
Since the value of `@name` is initially set to `'Bob'` on
initialization, calling this value on line 14 prints `"Bob"`
as-is to the terminal. On line 15, string interpolation calls
the `to_s` method on the `Person` object referenced by `bob`,
which prints `"My name is BOB."` to the terminal. In doing so,
the mutating `upcase!` method is called on the return value of the
`name` getter method on line 9, which mutates the value of the
instance variable `@name`. This means that line 16 prints the now
mutated string `'BOB'` instead.
=end
