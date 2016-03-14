class Link
  attr_accessor :value, :prev, :next

  def initialize(value)
    @value = value
    @prev = nil
    @next = nil
  end

  def insert(node)
    node.prev = self
    @next = node
    node
  end

  def remove
    self.prev.next = nil
    self.prev = nil
  end

end

class DoublyLinkedList
  attr_reader :first, :last

  def initialize(head)
    @first = head
    @last = head
  end

  def push(node)
    @last.insert(node)
    @last = node
  end

  def pop
    popped = @last
    @last = @last.prev
    popped.remove
    popped
  end
end
