class RomanNumeral
  def initialize(number)
    @number = number
  end

  ONES = ['', 'I', 'II', 'III', 'IV', 'V', 'VI', 'VII', 'VIII', 'IX']
  TENS = ['', 'X', 'XX', 'XXX', 'XL', 'L', 'LX', 'LXX', 'LXXX', 'XC']
  HUNDREDS = ['', 'C', 'CC', 'CCC', 'CD', 'D', 'DC', 'DCC', 'DCCC', 'CM']
  THOUSANDS = ['', 'M', 'MM', 'MMM']

  def to_roman
    @number.digits.map.with_index do |digit, idx|
      case idx
      when 0 then ONES[digit]
      when 1 then TENS[digit]
      when 2 then HUNDREDS[digit]
      when 3 then THOUSANDS[digit]
      end
    end.reverse.join
  end
end