# frozen_string_literal: true

require_relative 'lib/hash_map'

hash_map = HashMap.new
hash_map.set('Alice', 38)
hash_map.set('Bob', 22)
hash_map.set('Carl', 18)
hash_map.set('Alice', 45)
hash_map.set('Carla', 18)
('A'..'Z').each { |char| hash_map.set(char, char.ord) }
p hash_map

p hash_map.get('Alice')
p hash_map.get('Dylan')
