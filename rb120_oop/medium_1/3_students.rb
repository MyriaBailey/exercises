class Student
  def initialize(name, year)
    @name = name
    @year = year
  end
end

class Graduate < Student # 1
  def initialize(name, year, parking)
    super(name, year) # 4
    @parking = parking # 5
  end
end

class Undergraduate < Student # 2
  def initialize(name, year)
    super # 3
  end
end