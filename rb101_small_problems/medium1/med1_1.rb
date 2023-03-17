=begin
Rotation (Part 1)

Rules
I: An array of elements
O: A new array, of which first element is moved to the end

- Do NOT mutate the original array
- Do not use `Array#rotate` or `Array#rotate!`
- Order is otherwise preserved, just simply the first element
    is now at the end of the array.
- Items may be of any variety, ints strs whatever

Examples/Test Cases
rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
rotate_array(x) == [2, 3, 4, 1]   # => true
x == [1, 2, 3, 4]                 # => true

Data Structures
- An array of items
- A NEW array(?), that is then modified

Algorithms
A method that takes an array
- Maybe create a clone of the array?
- Remove the leading element (returns lead element)
- Append the old leading element (returns calling obj)
- Return new/modified array
=end

def rotate_array(arr)
  new_arr = arr.clone
  new_arr << new_arr.shift
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true