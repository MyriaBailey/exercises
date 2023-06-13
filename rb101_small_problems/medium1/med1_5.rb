=begin
Diamonds

Rules
I: An ODD integer, representing n height/width
O: A printed diamond-shape in text format of n height/width using *

- The argument will ALWAYS be an odd (presumably positive) integer
- There will  be n rows of text
- Each row of text after the first adds or subtracts 2 asterisks
- The number of filler spaces on the left will be 1/2 of n rounded down
    at maximum, and 0 at minimum
- The diamond remains perfectly symmetrical vertically and horizontally

Examples/Test Cases

diamond(1)

*

diamond(3)

 *
***
 *

 diamond(9)

    * (4 spaces on left, 1 asterisk)
   *** (3 spaces on left, 3 asterisks)
  ***** (2, 5)
 ******* (1, 7)
********* (0, 9)
 *******
  *****
   ***
    *

Data Structures
- An integer n provided
- Number of spaces = (n - current # of asterisks) / 2 for left side only

Algorithms
A method that takes an integer n
- set num_asterisks = 1
- set num_spaces = n / 2 (integer division will round down)

- until num_asterisks >= n (will stop just before midpoint):
  - print ' ' * num_spaces + '*' * num_asterisks
  - add 2 to num_asterisks
  - subtract 1 from num_spaces
- until num_asterisks < 1:
  - same print line (separate method?)
  - subtract 2 from num_asterisks
  - add 1 to num_spaces

=end

def diamond(n)
  num_asterisks = 1
  num_spaces = n / 2

  until num_asterisks >= n
    puts ' ' * num_spaces + '*' * num_asterisks
    num_asterisks += 2
    num_spaces -= 1
  end
  
  until num_asterisks < 1
    puts ' ' * num_spaces + '*' * num_asterisks
    num_asterisks -= 2
    num_spaces += 1
  end
end

diamond (1)
diamond (3)
diamond (9)