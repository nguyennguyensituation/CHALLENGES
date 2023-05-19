class Triangle
  def initialize(side1, side2, side3)
    @sides = [side1, side2, side3]
    raise ArgumentError unless legal?
  end

  def kind
    case @sides.uniq.count
    when 1 then 'equilateral'
    when 2 then 'isosceles'
    else 'scalene'
    end
  end

  def legal?
    @sides.none? { |side| side <= 0 } &&
    @sides[0] + @sides[1] > @sides[2] &&
    @sides[1] + @sides[2] > @sides[0] &&
    @sides[2] + @sides[0] > @sides[1]
  end
end