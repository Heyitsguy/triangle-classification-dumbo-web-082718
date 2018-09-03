class Triangle
  def initialize(l1,l2,l3)
    @l1 = l1
    @l2 = l2
    @l3 = l3
    @sides = [@l1,@l2,@l3].sort
  end
  def kind
    if @sides.any? do |side|
      side <= 0
    end
    raise TriangleError
    end
    if @sides[0] + @sides[1] <= @sides[2]
      raise TriangleError
    end

    case @sides.uniq.size
      when 1 then :equilateral
      when 2 then :isosceles
      else        :scalene
    end
  end
end

class TriangleError < StandardError
end
