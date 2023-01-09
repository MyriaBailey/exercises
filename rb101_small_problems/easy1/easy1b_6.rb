# Right Triangles

# Input: A positive integer
# Output: A displayed right triangle whose sides have n stars

# Rules
# - Take positive integer n
# - Every side of the displayed triangle will contain n stars
# - The 90 degree angle of the triangle is in the bottom right corner
# - Essentially, n lines tall, n characters wide,
#   - Left side is spaces, right side is filled in with stars

# Examples/Test Cases
# (pretend the pound signs are fully left-justified/invisible)

# triangle(5)
# 
    # *
  #  **
  # ***
#  ****
# *****

# triangle(9)
# 
        # *
      #  **
      # ***
    #  ****
    # *****
  #  ******
  # *******
#  ********
# *********

# Data Structures
# - A loop of n times
# - Uses the index to know how many of which characters to print

# Algorithms
# A method that takes a positive int (n)
# - n times, with index idx:
#   - Print ' ' (n - idx) times
#     and '*' (ixd + 1) times

# Code

def triangle(n)
  n.times {|idx| puts (' ' * (n - idx)) + ('*' * (idx + 1)) }
end

triangle(5)
triangle(9)

# Concluding Notes
# - Only made a simple mistake forgetting to add +1 to the index at first