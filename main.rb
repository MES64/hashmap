# frozen_string_literal: true

require_relative 'lib/hash_map'

# TODO: HashSet

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
