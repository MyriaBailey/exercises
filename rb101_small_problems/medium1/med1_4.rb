=begin
1000 Lights

Rules
I: an int number of switches, (n repetitions?)
O: An array returned indicating which lights are on after n repititions

Examples/Test Cases
n = 5, 10 lights
- Round 1, every light turned on
- Round 2, lights 2, 4, 6, .. toggled off
- Round 3, lights 3, 6, 9, .. toggled on/off
- ..
- Returns [1, 4, 9]

Data Structures
- An array of bools

Algorithms
A method that takes an int number of switches, optional n repetitions
- initialize an array filled with false * number of switches
- for n times,
  - map! the switchboard where 
    - if the (idx + 1) is evenly divisible by current n idx,
      - if true? false : true
=end

def light_switches(num)
  board = [false] * num

  num.times do |round|
    board.map!.with_index do |light, idx|
      if ((idx + 1) % (round + 1)) == 0
        light ? false : true
      else
        light
      end
    end
  end

  result = []
  board.each_with_index {|light, idx| result << (idx + 1) if light }
  result
end

p light_switches(10)