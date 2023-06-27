=begin
Stack Machine Interpretation

BG Info
- Register: a single, current value
- Stack: a collection of items, of which only the most recently added
    item is used in operations at any given time.
- Operations w/ two values remove the top most item in the stack,
  - perform the operation w/ the stack item and the register value
  - stores the result in the REGISTER.

Rules
I: A string of one or more operations to be performed
O: Performance of the operations with possible display of results

Should contain the following commands:

- n: Update the register to be `n` value, without modifying the stack
- PUSH: Add the current register value to the stack without changing the
    register.

- ADD: Pop a value from stack and add to the register, updating the reg.
- SUB: Pop a value from stack and sub. from reg. value, updating the reg.
- MULT: Pop a value from stack & mult. w/ reg. value, storing in reg.
- DIV: " " divides " "
- MOD: " " modulus operation

- POP: Remove top-most stack value and place in register
- PRINT: Display the register value

NOTE: All operations are integer operations, specifically w/ div and mod

- Operations supplied via one long string, separated by spaces
- Assume all programs are correct programs
  (ie: won't pop non-existent values, or use unknown tokens)
- Initialize register to 0


Examples/Test Cases

minilang('PRINT')
# 0

minilang('5 PUSH 3 MULT PRINT')
# 15

minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

minilang('5 PUSH POP PRINT')
# 5

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

minilang('-3 PUSH 5 SUB PRINT')
# 8

minilang('6 PUSH')
# (nothing printed; no PRINT commands)



Data Structures
- Integer `register` that is initialized to `0`
- Array `stack` that is initialized to `[]`

- Split the string argument into an array called `operations`
- Each operation corresponds to a series of methods of similar name
  - Each method takes the register and/or stack as arguments
  - Either mutates, or updates the objects using its return value

- Register, stack, and list of operations initialized beforehand
- for each operation, go through if/then or case statements for
    each operation type


Algorithms
A method `minilang` that takes a string argument
- save an array of the string split by spaces
- initialize empty stack and register = 0
- Until the array is empty . . .
  - regarding the case array.shift (remove 1st operation and look at)
    - call the corresponding method for the operation's string rep.
  - register = return value of the case statement

A method 

=end

def minilang(str)
  operations = str.split
  stack = []
  register = 0

  until operations.empty?
    operation = operations.shift

    register = case operation
    when 'PUSH'   then push_num(register, stack)
    when 'ADD'    then add_num(register, stack)
    when 'SUB'    then sub_num(register, stack)
    when 'MULT'   then mult_num(register, stack)
    when 'DIV'    then div_num(register, stack)
    when 'MOD'    then mod_num(register, stack)
    when 'POP'    then pop_num(stack)
    when 'PRINT'  then print_num(register)
    else               operation.to_i
    end
  end
end

def push_num(reg, stk)
  stk << reg
  reg
end

def add_num(reg, stk)
  stk.pop + reg
end

def sub_num(reg, stk)
  reg - stk.pop
end

def mult_num(reg, stk)
  stk.pop * reg
end

def div_num(reg, stk)
  reg / stk.pop
end

def mod_num(reg, stk)
  reg % stk.pop
end

def pop_num(stk)
  stk.pop
end

def print_num(reg)
  puts reg
  reg
end

minilang('PRINT')
# 0

minilang('5 PUSH 3 MULT PRINT')
# 15

minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

minilang('5 PUSH POP PRINT')
# 5

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

minilang('-3 PUSH 5 SUB PRINT')
# 8

minilang('6 PUSH')
# (nothing printed; no PRINT commands)


=begin
Concluding Notes:
- Did not need to make that many method definitions, could have just
  used things like += or %= instead of calling a method for 1 line
- also could have used .each on the arr directly instead
  (was worried about variable scope. should refresh on that)
- There's additional further exploration, skipping for now
=end