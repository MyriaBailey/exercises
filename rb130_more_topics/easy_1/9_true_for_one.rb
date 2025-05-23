=begin
one = false
for each in arr:
  bool = yield(element)
  return false if bool && one
  one = true if bool
one
=end

def one?(arr)
  one = false

  arr.each do |val|
    bool = yield(val)
    return false if one && bool
    one = true if bool
  end

  one
end

p one?([1, 3, 5, 6]) { |value| value.even? } == true
p one?([1, 3, 5, 7]) { |value| value.odd? } == false
p one?([2, 4, 6, 8]) { |value| value.even? } == false
p one?([1, 3, 5, 7]) { |value| value % 5 == 0 } == true
p one?([1, 3, 5, 7]) { |value| true } == false
p one?([1, 3, 5, 7]) { |value| false } == false
p one?([]) { |value| true } == false