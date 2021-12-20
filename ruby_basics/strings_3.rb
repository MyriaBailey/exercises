=begin
Using the following code, compare the value of name with the string 'RoGeR' while ignoring the case of both strings. 
Print true if the values are the same; print false if they aren't. 
Then, perform the same case-insensitive comparison, except compare the value of name with the string 'DAVE' instead of 'RoGeR'.
=end


def compare_string(comparison)
name = 'Roger'
  if name.casecmp?(comparison)
    puts 'True'
  else
    puts 'False'
  end
end



compare_string('RoGeR')
compare_string('DAVE')