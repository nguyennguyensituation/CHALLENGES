class Element
  attr_reader :datum
  attr_accessor :next

  def initialize(datum, next_element = nil)
    @datum = datum
    @next = next_element
  end

  def tail?
    @next.nil?
  end
end

class SimpleLinkedList
  attr_accessor :items
  def initialize
    @items = []
  end

  def size
    items.size
  end

  def empty?
    items.empty?
  end

  def push(datum)
    items << Element.new(datum, head)
    self
  end

  def pop
    element = items.pop
    items.last.next = nil unless empty?
    element.datum
  end

  def head
    items.last
  end

  def peek
    head.datum unless empty?
  end

  def to_a
    items.map(&:datum).reverse
  end

  def self.from_a(arr)
    arr = [] if arr.nil?

    list = SimpleLinkedList.new
    arr.reverse.each { |datum| list.push(datum) }
    list
  end

  def reverse
    SimpleLinkedList.from_a(self.to_a.reverse)
  end
end
