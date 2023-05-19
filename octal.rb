class Octal
  def initialize(str)
    @number = valid?(str) ? str.to_i : 0
  end

  def valid?(str)
    str.scan(/[89\D]/).empty?
  end

  def to_decimal
    @number.digits.map.with_index { |num, idx| num * 8**idx }.sum
  end
end