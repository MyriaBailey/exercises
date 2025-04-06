# Give an example of when it would make sense to manually write a custom getter method vs. using attr_reader.

=begin
A custom getter method is useful when the desired display value is
different from the actual value of the information, particularly
when the information itself is sensitive and must be handled with care.

For example:

=end
class LoginInfo
  attr_reader :username

  def initialize(u, p)
    @username = u
    @password = p
  end

  def password
    '*' * @password.length
  end

  def display
    puts "Your username is: #{username}"
    puts "Your password is: #{password}"
  end
end

my_acct = LoginInfo.new("Bob", "Passw0rd!")
puts my_acct.display

=begin
In this example, instead of careless invocations of the
`password` getter method returning the sensitive information,
the getter method returns a censored version instead. This
requires explicit intent to be able handle the actual raw data
itself via `@password`, which protects the information from
careless coding.
=end