class EmptyStack < StandardError; end

class Minilang
  def initialize(command_string)
    @commands = command_string.split
    @register = 0
    @stack = []
  end

  def eval
    commands.each do |command_str|
      if is_number?(command_str)
        self.register = command_str.to_i
      else
        begin
          self.send(command_str.downcase)
        rescue NoMethodError
          puts "Invalid token: #{command_str}"
          return
        rescue EmptyStack
          puts "Empty stack!"
          return
        end
      end
    end
  end

 # CURRENTLY: CONTEMPLATING THE POSITIONING OF RAISING ERRORS (in regards
 # to when stack.pop is used) AND HOW/WHEN THOSE ARE HANDLED (re: stopping)

  private

  attr_reader :commands, :stack
  attr_accessor :register

  def is_number?(str)
    str.to_i.to_s == str
  end

  # if stack empty: say so, convey to eval to return/abort
  def pop_act_store(operator)
    raise EmptyStack if stack.empty?
    self.register = register.send(operator, stack.pop)
  end

  def push
    stack << register
  end

  def add
    pop_act_store(:+)
  end

  def sub
    pop_act_store(:-)
  end

  def mult
    # self.register = stack.pop * register
    pop_act_store(:*)
  end

  def div
    pop_act_store(:/)
    # self.register = register / stack.pop
  end

  def mod
    pop_act_store(:%)
    # self.register = register % stack.pop
  end

  def pop
    raise EmptyStack if stack.empty?
    self.register = stack.pop
  end

  def print
    puts register
  end
end

Minilang.new('PRINT').eval
# 0

Minilang.new('5 PUSH 3 MULT PRINT').eval
# 15

Minilang.new('5 PRINT PUSH 3 PRINT ADD PRINT').eval
# 5
# 3
# 8

Minilang.new('5 PUSH 10 PRINT POP PRINT').eval
# 10
# 5

Minilang.new('5 PUSH POP POP PRINT').eval
# Empty stack!

Minilang.new('3 PUSH PUSH 7 DIV MULT PRINT ').eval
# 6

Minilang.new('4 PUSH PUSH 7 MOD MULT PRINT ').eval
# 12

Minilang.new('-3 PUSH 5 XSUB PRINT').eval
# Invalid token: XSUB

Minilang.new('-3 PUSH 5 SUB PRINT').eval
# 8

Minilang.new('6 PUSH').eval
# (nothing printed; no PRINT commands)