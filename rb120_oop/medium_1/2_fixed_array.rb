class FixedArray
  def initialize(s)
    @size = s
    @arr = Array.new(s)
  end

  def [](idx)
    arr.fetch(idx)
  end

  def []=(idx, val)
    arr.fetch(idx) # could have used self[index] to reuse prev method
    arr[idx] = val
  end

  def to_a
    arr # Solution used .clone (prolly to match other to_class methods)
  end

  def to_s
    arr.inspect # Solution used to_a.to_s ... Can't remember reason for
    # inspect specifically, since to_s also works here...
    # Was there something off in IRB about it? iirc the decision came
    # from issues with [] and "" and nil showing up right...
  end

  private
  attr_reader :arr
end

fixed_array = FixedArray.new(5)
puts fixed_array[3] == nil
puts fixed_array.to_a == [nil] * 5

fixed_array[3] = 'a'
puts fixed_array[3] == 'a'
puts fixed_array.to_a == [nil, nil, nil, 'a', nil]

fixed_array[1] = 'b'
puts fixed_array[1] == 'b'
puts fixed_array.to_a == [nil, 'b', nil, 'a', nil]

fixed_array[1] = 'c'
puts fixed_array[1] == 'c'
puts fixed_array.to_a == [nil, 'c', nil, 'a', nil]

fixed_array[4] = 'd'
puts fixed_array[4] == 'd'
puts fixed_array.to_a == [nil, 'c', nil, 'a', 'd']
puts fixed_array.to_s == '[nil, "c", nil, "a", "d"]'

puts fixed_array[-1] == 'd'
puts fixed_array[-4] == 'c'

begin
  fixed_array[6]
  puts false
rescue IndexError
  puts true
end

begin
  fixed_array[-7] = 3
  puts false
rescue IndexError
  puts true
end

begin
  fixed_array[7] = 3
  puts false
rescue IndexError
  puts true
end