# frozen_string_literal: true

require_relative 'node'

# LinkedList class contains the head node
# It has methods to find, insert, and delete the node at any index within the linked list
# It also has a method for giving the size as well as listing the keys, values, or both
class LinkedList
  def initialize
    @head = nil
  end

  def insert(key, value)
    return @head = Node.new(key, value) if @head.nil?
    return @head.value = value if @head.key == key

    current_node = @head
    until current_node.next_node.nil?
      current_node = current_node.next_node
      return current_node.value = value if current_node.key == key
    end
    current_node.next_node = Node.new(key, value)
  end

  def to_s
    current_node = @head
    string_array = []
    until current_node.nil?
      string_array << "( #{current_node.key}: #{current_node.value} ) -> "
      current_node = current_node.next_node
    end
    (string_array << 'nil').join
  end
end
