class CustomSet
  attr_reader :arr

  def initialize(arr = [])
    @arr = arr
  end

  def empty?
    arr.empty?
  end

  def contains?(element)
    arr.include?(element)
  end

  def subset?(other_set)
    other_set.arr - arr + arr == other_set.arr
  end

  def disjoint?(other_set)
    intersection(other_set).empty?
  end

  def eql?(other_set)
    arr.uniq.sort == other_set.arr.uniq.sort
  end

  alias == eql?

  def add(element)
    arr << element unless contains?(element)
    self
  end

  def intersection(other_set)
    CustomSet.new(arr.intersection(other_set.arr))
  end

  def difference(other_set)
    CustomSet.new(arr.difference(other_set.arr))
  end

  def union(other_set)
    CustomSet.new(arr.union(other_set.arr))
  end
end
