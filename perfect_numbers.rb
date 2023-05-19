class PerfectNumber
  def self.classify(num)
    raise StandardError if num < 0

    case aliquot_sum(num)
    when num then 'perfect'
    when 1...num then 'deficient'
    else 'abundant'
    end
  end

  def self.aliquot_sum(num)
    (1...num).select { |n| num % n == 0 }.sum
  end
end