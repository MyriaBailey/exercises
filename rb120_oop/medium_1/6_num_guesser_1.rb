=begin
Create an object-oriented number guessing class for numbers 
in the range 1 to 100, with a limit of 7 guesses per game.

Note that a game object should start a new game with a new
number to guess with each call to #play.

Rules
- Player gets 7 guesses
- range from 1 - 100 inclusive
- new number determined upon `play`
- after each guess, inform player if too high or too low
- win and end game if player guesses correctly
- lose and end game if player runs out of guesses

Data structures/Algorithms
- initialization: set the range and max guesses
- play: set num guesses to max guesses, pick a goal number (rand(1..100))

- turn loop:
  - "You have x guesses remaining."
  - "Enter a number between [min] and [max]: __"
    - Should save min and max values for the range
  - input validation:
    - ensure submission is a number
    - ensure submission falls within range
      - min <= input && input <= max ?
  - Upon successful input:
    - Too low, high, or correct!
  - "You won!" / "You have no more guesses. You lost!"

- Get/Validate input as a method (possible loop instead of rescue)
- Determining high/low/win as a method



=end

class GuessingGame
  def initialize
    @max_turns = 7
    @min_val = 1
    @max_val = 100
  end

  def play
    reset_values

    until game_end?
      announce_turns
      prompt_guess
      give_hint
      update_turns_left
      linebreak
    end

    announce_result
  end

  private

  attr_reader :max_turns, :min_val, :max_val
  attr_accessor :turns_left, :answer, :guess

  def linebreak
    puts ""
  end

  def reset_values
    self.answer = rand(min_val..max_val)
    self.guess = nil
    self.turns_left = max_turns
  end

  def game_end?
    guess == answer || turns_left == 0
  end

  def announce_turns
    guess_es = (turns_left == 1) ? "guess" : "guesses"
    puts "You have #{turns_left} #{guess_es} remaining."
  end

  def prompt_guess
    prompt_str = "Enter a number between #{min_val} and #{max_val}: "

    puts prompt_str
    loop do
      self.guess = gets.chomp.to_i

      break if valid_guess?
      puts "Invalid guess. " + prompt_str
    end
  end

  def valid_guess?
    guess <= max_val && guess >= min_val
  end

  def give_hint
    return if guess.nil? # Testing clause

    if guess < answer
      puts "Your guess is too low."
    elsif guess > answer
      puts "Your guess is too high."
    else
      puts "That's the number!"
    end
  end

  def update_turns_left
    self.turns_left -= 1
  end

  def announce_result
    if guess == answer
      puts "You won!"
    else
      puts "You have no more guesses. You lost!"
    end
  end
end

game = GuessingGame.new
game.play