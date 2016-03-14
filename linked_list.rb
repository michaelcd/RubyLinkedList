class Link
  attr_accessor :value, :prev, :next

  def initialize(value = nil)
    @value = value
    @prev = nil
    @next = nil
  end

  def insert(link)
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

  def push(link)
    @last.insert(link)
    @last = node
  end

  def pop
    popped = @last
    @last = @last.prev
    popped.remove
    popped
  end
end
