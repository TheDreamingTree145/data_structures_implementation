require 'require_all'
require 'pry'
require_all 'lib/linked-list'

class LinkedList
  attr_accessor :head
  
  def initialize(head)
    @head = head
  end
  
  def add_node(value, node)
    current = head
    while current.next_node != node
      current = current.next_node
    end
    new_node = Node.new(value, current.next_node)
    current.next_node = new_node
    new_node
  end
  
  def find_node(value)
    current = head
    while current.value != value
      current = current.next_node
    end
    current
  end
end
