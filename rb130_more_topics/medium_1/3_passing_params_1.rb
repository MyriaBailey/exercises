items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(items)
  puts "Let's start gathering food."
  if block_given?
    yield(items)
  else
    puts "#{items.join(', ')}"
  end
  puts "Nice selection of food we have gathered!"
end

gather(items) do |produce|
  puts "We've gathered some vegetables: #{produce[1]} and #{produce[2]}"
end


gather(items) { |produce| puts produce.join('; ') }