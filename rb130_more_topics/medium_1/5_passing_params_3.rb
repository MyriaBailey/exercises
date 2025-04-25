items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(items)
  puts "Let's start gathering food."
  yield(items)
  puts "We've finished gathering!"
end

gather(items) do | *first, last |
  puts first.join(', ')
  puts last
end

puts "---"

gather(items) do | first, *mid , last |
  puts first
  puts mid.join(', ')
  puts last
end

puts "---"

gather(items) do | first, *last |
  puts first
  puts last.join(', ')
end

puts "---"

gather(items) do | first, second, third, fourth |
  puts [first, second, third, fourth].join(', ')
end