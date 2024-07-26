class Rectangle
  def initialize(height, width)
    @height = height
    @width = width
  end

  def area
    @height * @width
  end
end

class Square < Rectangle
  def initialize(width)
    # @height = width
    # @width = width
    super(width, width)
  end
end

square = Square.new(5)
puts "area of square = #{square.area}"