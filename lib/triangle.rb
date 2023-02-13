
class Triangle
  # write code here
  class TriangleError < StandardError
  end
  attr_accessor :side1, :side2, :side3
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  

  def kind
    if side1 <= 0 || side2 <= 0 || side3 <= 0
      raise TriangleError, 'Sides of a triangle cannot have length 0 or less'
    elsif side1 + side2 <= side3 || side2 + side3 <= side1 || side3 + side1 <= side2
      raise TriangleError, 'the sum of two sides must be greater than the third side'
    elsif side1 == side2 && side2 == side3
      return :equilateral
    elsif side1 == side2 || side2 == side3 || side3 == side1
      return :isosceles 
    else
      return :scalene
    end
  end
  
end


