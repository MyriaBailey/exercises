=begin
for each element in array:
  return true if yield (is true)
false
=end

def any?(arr)
  arr.each { |element| return true if yield(element) }
  false
end

p any?([1, 3, 5, 6]) { |value| value.even? } == true
p any?([1, 3, 5, 7]) { |value| value.even? } == false
p any?([2, 4, 6, 8]) { |value| value.odd? } == false
p any?([1, 3, 5, 7]) { |value| value % 5 == 0 } == true
p any?([1, 3, 5, 7]) { |value| true } == true
p any?([1, 3, 5, 7]) { |value| false } == false
p any?([]) { |value| true } == false

p any?({a: 1, b: 2}) { |key, val| puts "Key: #{key}, Val: #{val}." }