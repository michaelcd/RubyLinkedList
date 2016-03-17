class Link
  attr_accessor :value, :prev, :next

  def initialize(value = nil)
    @value = value
    @prev = nil
    @next = nil
  end

  def insert(link)
    link.prev = self
    @next = link
    link
  end

  def remove
    self.prev.next = nil
    self.prev = nil
  end

end

class DoublyLinkedList
  attr_accessor :first, :last

  def initialize(head)
    @first = head
    @last = head
  end

  def push(link)
    @last.insert(link)
    @last = link
  end

  def pop
    popped = @last
    @last = @last.prev
    popped.remove
    popped
  end
end
