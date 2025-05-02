=begin
Generate a unique name on initialization and resetting

From test cases:
- class Robot
- name instance variable on initialization
- `reset` instance method
- name must contain exactly 2 letters, 3 numbers
- (probably that order)
- class stores a memory of existing names
- generates new name if name already taken

ideas:
- class variable storing used names
- reset button removes existing name from class var
- name = sample 2 from alphabet, sample 3 from digits
- loop verification do this until name is not in existing names

=end

class Robot
  @@existing_names = []

  attr_reader :name

  def initialize
    @name = generate_name
  end

  def reset
    old_name = name
    self.name = generate_name
    @@existing_names.delete(old_name)
  end

  private

  attr_writer :name

  def generate_name
    alphabet = ('A'..'Z').to_a
    digits = ('0'..'9').to_a
    name = ''

    loop do
      name = alphabet.sample + alphabet.sample
      name += digits.sample + digits.sample + digits.sample

      break unless @@existing_names.include?(name)
    end

    @@existing_names << name
    name
  end
end
