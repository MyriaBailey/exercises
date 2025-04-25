=begin
counter = start
while counter <= end
  yield(counter)
  counter += step
end

=end

def step(start_val, end_val, step)
  counter = start_val
  
  while counter <= end_val
    yield(counter)
    counter += step
  end

  [start_val, end_val, step]
end

step(1, 10, 3) { |value| puts "value = #{value}" }