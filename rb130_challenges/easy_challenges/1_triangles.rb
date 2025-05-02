=begin
Write a program to determine if a triangle is:
- equilateral, isosceles, or scalene

Equilateral has: all 3 sides same length
Isosceles has: EXACTLY 2 sides of same length
Scalene has: NO sides same length

idea: array of sides, call uniq, size of arr = num of uniq sides
uniq must convert all to floats

ALL triangles:
- All sides must be length >0
- Sum of the lengths of ANY 2 sides must be > third side
  - a + b > c
  - a + c > b
  - b + c > a

Reading through test cases...
- Raise ArgumentError if illegal triangle upon creation
- create a Triangle Object of abc sides (must be legal)
- decimals are allowed

Methods
- `Triangle#kind` returns lowercase string
=end

class Triangle
  def initialize(a, b, c)
    @side_a = a
    @side_b = b
    @side_c = c
    @sides = [@side_a, @side_b, @side_c]

    raise ArgumentError unless valid_triangle?
  end

  def kind
    # Return string evaluation
    unique_sides = sides.map(&:to_f).uniq.size
    case unique_sides
    when 3 then 'scalene'
    when 2 then 'isosceles'
    when 1 then 'equilateral'
    end
  end

  private

  attr_reader :sides, :side_a, :side_b, :side_c

  def valid_triangle?
    all_nums? && sides_above_zero? && any_two_greater_than_third?
  end

  def all_nums?
    @sides.all? { |side| side.kind_of?(Numeric) }
  end

  def sides_above_zero?
    sides.all? { |side| side > 0 }
  end

  def any_two_greater_than_third?
    (side_a + side_b > side_c) &&
      (side_b + side_c > side_a) &&
      (side_c + side_a > side_b)
  end
end