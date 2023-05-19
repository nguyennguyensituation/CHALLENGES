class Scrabble
  def initialize(word)
    @word = word ? word.upcase : ''
  end

  LETTER_VALUES = { 'AEIOULNRST' => 1, 'DG' => 2, 'BCMP' => 3, 'FHVWY' => 4, 'K' => 5, 'JX' => 8, 'QZ' => 10 }

  def score
    total = 0
    @word.upcase.chars.each do |char|
      LETTER_VALUES.each { |k, v| total += v if k.include?(char) }
    end
    total
  end

  def self.score(word)
    Scrabble.new(word).score
  end
end