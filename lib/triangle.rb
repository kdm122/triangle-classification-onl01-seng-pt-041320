class Triangle
  # write code here
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    sides = [side1, side2, side3]
    valid_triangle?(side1, side2, side3) ? true : error
#    sides.each do |side|
#      if side =< 0
#        begin
#        raise TriangleError
#      rescue TriangleError => error
#        puts error.message
#      end

#   end

    @side1 = side1
    @side2 = side2
    @side3 = side3


  end

  def error 
    begin
        raise TriangleError
      rescue TriangleError => error
        puts error.message
    end
  end

  def valid_triangle?(a, b, c)
    sides = [a,b,c]
    false if sides.any? { |side| side == 0 }
    true if sides.all? { |side| side == a }
    sides.inject(:+) - sides.max > sides.max ? true : false
  end

  def kind

  end

  class TriangleError < StandardError
    def message
    "Not a valid triangle"
    end
  end


end
