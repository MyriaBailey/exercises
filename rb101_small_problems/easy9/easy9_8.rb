=begin
Grocery List

Rules
Input: a nested array of fruits with quantities
Output: A non-nested array of each fruit listed the given num of times

- Starting array has sub-arrays containing a string and a number
- Final array is just an array of strings

Examples/Test Cases
buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]

Data Structures
- A nested array
- Flattened into just one array of strings

Algorithms
A method that takes a nested array
- For each sub-array (with object):
  - for quantity times, add fruit to the object
=end

def buy_fruit(list)
  list.each_with_object(result = []) do |sub_arr|
    sub_arr[1].times {|_| result << sub_arr[0] }
  end
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]

# Concluding Notes
# - Way overcomplicated what could have been a map with more sub arrays
#   and then flattened.