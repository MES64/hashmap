# frozen_string_literal: true

require_relative 'lib/linked_list'

list = LinkedList.new
puts list
p list.retrieve('Alice')
list.insert('Alice', 38)
puts list
p list.retrieve('Alice')
p list.retrieve('Bob')
list.insert('Bob', 26)
puts list
list.insert('Carl', 18)
puts list
list.insert('Alice', 50)
puts list
list.insert('Carl', 88)
puts list

p list.retrieve('Alice')
p list.retrieve('Bob')
p list.retrieve('Carl')
p list.retrieve('Dylan')
