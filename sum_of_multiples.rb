class SumOfMultiples
  def initialize(*arr)
    @arr = arr.empty? ? [3, 5] : [*arr]
  end

  def to(max)
    (1...max).select { |num| num if @arr.any? { |n| num % n == 0 } }.sum
  end

  def self.to(max)
    SumOfMultiples.new.to(max)
  end
end
