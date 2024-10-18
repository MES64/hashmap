# frozen_string_literal: true

require_relative 'lib/hash_map'

hash_map = HashMap.new
p hash_map.buckets[0]
p hash_map.buckets[15]
p hash_map.buckets[16]

# TODO: Test set(); also load factor stuff
