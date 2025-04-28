=begin
Convert an octal number to decimal form
must be only number (return 0 otherwise)
9 is banned (also returns 0)

=end

class Octal
  def initialize(n)
    @octal = n
  end

  def to_decimal
    return 0 unless valid_octal?
    digits = octal.chars.reverse

    digits.map.with_index do |n, idx|
      n.to_i * (8 ** idx)
    end.sum
    
  end

  private
  attr_reader :octal

  def valid_octal?
    # octal.is_a?(String) &&
    #   octal == octal.gsub(/\D/, '') &&
    #   octal == octal.delete('89')

    octal.is_a?(String) &&
      octal.chars.all? { |char| char.match?(/[0-7]/)}
  end
end