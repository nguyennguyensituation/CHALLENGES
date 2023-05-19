class Diamond
  ALPHABET = ('A'..'Z').to_a

  def self.make_diamond(letter)
    return "A\n" if letter == 'A'
    num_lines = ALPHABET.index(letter)
    top_line = (" " * num_lines) + "A" + (" " * num_lines) + "\n"
    mid_line = letter + (" " * (num_lines * 2 - 1)) + letter + "\n"
    arr = [top_line]

    num_side_spaces = num_lines - 1
    num_center_spaces = 1

    (1..num_lines-1).each do |row|
      letter = ALPHABET[row]
      side = " " * num_side_spaces
      center = " " * num_center_spaces
      line = side + letter + center + letter + side + "\n"
      arr << line
      num_side_spaces -= 1
      num_center_spaces += 2
    end
    [arr, mid_line, arr.reverse].join
  end
end