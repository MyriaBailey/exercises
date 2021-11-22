=begin
Write a program that requests two integers from the user, adds them together, and then displays the result. 
Furthermore, insist that one of the integers be positive, and one negative; 
however, the order in which the two integers are entered does not matter.
Do not check for the positive/negative requirement until both integers are entered, and start over if the requirement is not met.
=end


def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end


def accept_number()
  num = nil
  loop do
    puts "Please enter a positive or negative integer"
    num = gets.chomp
    break if valid_number?(num)
    puts "Please enter a valid number"
  end
  return num.to_i
end

first_number = nil
second_number = nil

loop do
  first_number = accept_number()
  second_number = accept_number()
  
  break if (first_number > 0) != (second_number > 0)
  puts "Sorry, one integer must be positive and one must be negative"
end

puts "#{first_number} + #{second_number} = " + (first_number + second_number).to_s