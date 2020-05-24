class Triangle
  # write code here
  attr_accessor :side1 :side2 :side3

  def initialize(side1, side2, side3)
    sides = [side1, side2, side3]
    sides.each do |side|
      side > 0 ? true : raise TriangleError
    end

    @side1 = side1
    @side2 = side2
    @side3 = side3


  end

  def kind

  end

  class TriangleError < StandardError
    def message
    "Not a valid triangle"
    end
  end


end
