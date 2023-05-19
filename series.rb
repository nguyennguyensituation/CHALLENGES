class Series
  def initialize(str)
    @arr = str.chars.map(&:to_i)
  end

  def slices(num)
    raise ArgumentError if num > @arr.size
    @arr.each_cons(num).with_object([]) { |set, result| result << set }
  end
end