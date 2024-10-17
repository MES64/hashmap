# frozen_string_literal: true

require_relative 'lib/hash_map'

hash_map = HashMap.new
p hash_map.hash('')
p hash_map.hash('A')
p hash_map.hash('Al')
p hash_map.hash('Ali')
p hash_map.hash('Alic')
p hash_map.hash('Alice')
p hash_map.hash('iceAl')
