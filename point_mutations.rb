class DNA
  def initialize(strand)
    @strand = strand
  end

  def hamming_distance(other_strand)
    short, long = [@strand, other_strand].sort_by(&:size)
    distance = 0
    short.chars.each_with_index { |char, idx| distance += 1 if char != long[idx] }
    distance
  end
end