# take sorted arr of ints as an arg
# returns arr including all the missing ints (in order
# btwn first and last elements of the arg

=begin
- counting between first element and last element:
- add to an arr if current element is not included in arr
- return new arr

- still return arr if only one element
=end

def missing(arr)
  missing_nums = []

  (arr.first...arr.last).each do |n|
    missing_nums << n unless arr.include?(n)
  end

  missing_nums
end

p missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
p missing([1, 2, 3, 4]) == []
p missing([1, 5]) == [2, 3, 4]
p missing([6]) == []