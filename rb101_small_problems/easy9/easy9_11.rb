=begin
Odd Lists

I: An array
O: An array with only every other value of the initial arr

- Start with the 1st element, the 3rd, 5th, and so on

Examples/Test Cases
oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
oddities(['abc', 'def']) == ['abc']
oddities([123]) == [123]
oddities([]) == []
oddities([1, 2, 3, 4, 1]) == [1, 3, 1]

Data Structures
- An array of elements
- A selection of that array, determined by index position

Algorithms
A method that takes an array
- select with index, all values with an EVEN index (first is 0)
=end

def oddities(arr)
  arr.select.with_index {|_, idx| idx.even? }
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []
p oddities([1, 2, 3, 4, 1]) == [1, 3, 1]