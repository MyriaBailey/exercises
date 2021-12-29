=begin
Use Hash#each to iterate over numbers and print each element's key/value pair.
=end

numbers = {
  high:   100,
  medium: 50,
  low:    10
}

numbers.each { |key, val| puts "A #{key} number is #{val}" }