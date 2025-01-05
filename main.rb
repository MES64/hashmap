# frozen_string_literal: true

require_relative 'lib/hash_map'
require_relative 'lib/hash_set'
require_relative 'lib/linked_list'

# TODO: HashSet: Update linked list and hash map; test linked list, hash map, hash set

puts 'HashMap Final Test:'
test = HashMap.new(0.75)

test.set('apple', 'red')
test.set('banana', 'yellow')
test.set('carrot', 'orange')
test.set('dog', 'brown')
test.set('elephant', 'gray')
test.set('frog', 'green')
test.set('grape', 'purple')
test.set('hat', 'black')
test.set('ice cream', 'white')
test.set('jacket', 'blue')
test.set('kite', 'pink')
test.set('lion', 'golden')

p test.capacity
p test.length
p test.entries

test.set('apple', 'green')
test.set('lion', 'orange')

p test.capacity
p test.length
p test.entries

p test

test.set('moon', 'silver')

p test.capacity
p test.length
p test.entries

p test

test.set('jacket', 'red')
test.set('kite', 'brown')

p test.capacity
p test.length
p test.entries

p test.get('kite')
p test.has?('kite')
p test.remove('kite')
p test.get('kite')
p test.has?('kite')
p test.length
p test.entries
p test.remove('kite')
p test.length
p test.entries

p test.keys
p test.values
p test.entries
p test.length
test.clear
p test.keys
p test.values
p test.entries
p test.length

puts 'HashSet:'
hash_set = HashSet.new(0.75)

hash_set.add('apple')
hash_set.add('banana')
hash_set.add('carrot')
hash_set.add('dog')
hash_set.add('elephant')
hash_set.add('frog')
hash_set.add('grape')
hash_set.add('hat')
hash_set.add('ice cream')
hash_set.add('jacket')
hash_set.add('kite')
hash_set.add('lion')

p hash_set.capacity
p hash_set.length
p hash_set.entries

hash_set.add('apple')
hash_set.add('lion')

p hash_set.capacity
p hash_set.length
p hash_set.entries

hash_set.add('moon')

p hash_set.capacity
p hash_set.length
p hash_set.entries

hash_set.add('jacket')
hash_set.add('kite')

p hash_set.capacity
p hash_set.length
p hash_set.entries

p hash_set.has?('kite')
p hash_set.remove('kite')
p hash_set.has?('kite')
p hash_set.length
p hash_set.entries
p hash_set.remove('kite')
p hash_set.length
p hash_set.entries

hash_set.clear
p hash_set.length
p hash_set.entries

puts 'Linked List:'
list = LinkedList.new
p list.contains?('Anna')
list.insert('Anna', 28)
p list.contains?('Anna')
p list.contains?('Bob')
list.insert('Bob', 25)
p list.contains?('Anna')
p list.contains?('Bob')
p list.contains?('Carl')
