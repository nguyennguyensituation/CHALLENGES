class Anagram
  def initialize(word)
    @word = word.downcase
  end

  def is_anagram?(comparison)
    @word != comparison.downcase && @word.chars.sort == comparison.downcase.chars.sort
  end

  def match(arr)
    arr.select { |str| is_anagram?(str) }
  end
end

