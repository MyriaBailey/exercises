# String Assignment

# For the code:
name = 'Bob'
save_name = name
name.upcase!
puts name, save_name
# It will print:
# BOB
# BOB

# This is because `name` and `save_name` point to the same value
# By mutating the value, both variables pointing to the affected value
#   will show the same mutated result