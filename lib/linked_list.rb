# frozen_string_literal: true

require_relative 'node'

# LinkedList class contains the head node
# It has methods to retrieve, insert, and delete the node at any index within the linked list
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

  def retrieve(key)
    current_node = @head
    until current_node.nil?
      return current_node.value if current_node.key == key

      current_node = current_node.next_node
    end
    nil
  end

  def delete(key)
    return nil if @head.nil?
    return delete_head if @head.key == key

    current_node = @head
    until current_node.next_node.nil?
      return delete_next_node(current_node) if current_node.next_node.key == key

      current_node = current_node.next_node
    end
    nil
  end

  def size
    current_node = @head
    count = 0
    until current_node.nil?
      count += 1
      current_node = current_node.next_node
    end
    count
  end

  def key_value_pairs
    current_node = @head
    array_of_pairs = []
    until current_node.nil?
      array_of_pairs << [current_node.key, current_node.value]
      current_node = current_node.next_node
    end
    array_of_pairs
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

  private

  def delete_head
    old_head = @head
    @head = @head.next_node
    old_head.value
  end

  def delete_next_node(current_node)
    node_to_delete = current_node.next_node
    current_node.next_node = current_node.next_node.next_node
    node_to_delete.value
  end
end
