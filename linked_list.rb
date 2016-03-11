class Node
  attr_accessor :value, :prev, :next

  def initialize(value)
    @value = value
    @prev = nil
    @next = nil
  end

  def next
    @next
  end

  def prev
    @prev
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
  def initialize(head)
    @head = head
    @last = head
  end

  def first
    @head
  end

  def last
    @last
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
