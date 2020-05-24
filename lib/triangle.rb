class Triangle
  # write code here
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @sides = [side1, side2, side3]

    @side1 = side1
    @side2 = side2
    @side3 = side3

  end

#  def self.error
#    begin
#        raise TriangleError
#      rescue TriangleError => error
#        puts error.message
#    end
#  end

  def kind
    if @sides.any? { |side| side == 0 || side < 0 }
      raise TriangleError
    elsif (@side1+@side2 <= @side3) || (@side1+@side3 <= @side2) || (@side2+@side3 <= @side1)
      raise TriangleError
    else
      if (@side1 == @side2) && (@side2 == @side3)
        :equilateral
      elsif (@side1 == @side2) || (@side2 == @side3) || (@side1 == @side3)
        :isosceles
      elsif (@side1 != @side2) && (@side2 != @side3) && (@side1 != @side3)
        :scalene
      end
    end



  end

  class TriangleError < StandardError
    def message
    "Not a valid triangle"
    end
  end


end
