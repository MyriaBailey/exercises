# Mutation

# The following code:
array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2

# Will print a modified array2.
# This is because array1 passes on the same reference value to array2
#   and then directly mutates the shared reference value with
#   NO reassignment.