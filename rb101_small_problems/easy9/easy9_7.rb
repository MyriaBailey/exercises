=begin
Grade Book

Rules
Input: 3 numbers representing grades
Output: A letter associated w/ that grade

- Assume ALL test values btwn 0 and 100 inclusive
- No need to check for negatives or vals greater than 100

Examples/Test Cases
get_grade(95, 90, 93) == "A"
get_grade(50, 50, 95) == "D"

Data Structures
- 3 numbers averaged together
- Extended if/else/elsif statement

Algorithms
A method that takes 3 numbers
- Calculate the mean
  - each number added, divided by total number, as float?
- if mean >= 90, return 'A', elsif >= 80, return 'B', so on
implicit return
=end

def get_grade(a, b, c)
  avg = (a + b + c) / 3.0
  if avg >= 90
    'A'
  elsif avg >= 80
    'B'
  elsif avg >= 70
    'C'
  elsif avg >= 60
    'D'
  else
    'F'
  end
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"