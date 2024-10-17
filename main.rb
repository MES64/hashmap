# frozen_string_literal: true

require_relative 'lib/linked_list'

puts 'Insert and Retrieve:'
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

puts ''

puts 'Key Array:'
puts list
p list.key_array

puts ''

puts 'Delete and Size:'
puts list.size
puts list
p list.delete('Dylan')
puts list
p list.delete('Bob')
puts list
p list.delete('Alice')
puts list
p list.delete('Carl')
puts list
p list.delete('Alice')
puts list
puts list.size

puts ''

puts 'Key array:'
puts list
p list.key_array
