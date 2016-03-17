require_relative 'linked_list'
require 'byebug'

# Given a linked list of integers and an integer value,
# delete every node of the linkedlist containing that value.

def delete_values(list, value)
  current_node = list.first
  until current_node == nil
    if current_node.value == value
      if current_node == list.first
        list.first = current_node.next
        current_node.prev = nil
      elsif current_node == list.last
        list.pop
      else
        current_node.next.prev = current_node.prev
        current_node.prev.next = current_node.next
      end
    end
    current_node = current_node.next
  end
end

def print_list_values(list)
  current_node = list.first
  until current_node == nil
    print "#{current_node.value}, "
    current_node = current_node.next
  end
  puts
end

list = DoublyLinkedList.new(Link.new(1))
list.push(Link.new(2))
list.push(Link.new(3))
list.push(Link.new(2))
list.push(Link.new(4))

print_list_values(list)
delete_values(list, 2)
print_list_values(list)
