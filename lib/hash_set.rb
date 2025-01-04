# frozen_string_literal: true

require_relative 'hash_map'

# HashSet contains a HashMap with nil values
# Methods: set, has?, remove, length, clear, entries, and read load factor and capacity
# This implementation only works for string entries
class HashSet
  def initialize(load_factor = 0.8, capacity = 16)
    @hash_map = HashMap.new(load_factor, capacity)
  end

  def clear
    @hash_map.clear
  end

  def add(key)
    @hash_map.set(key, nil)
  end

  def has?(key)
    @hash_map.has?(key)
  end

  def remove(key)
    @hash_map.remove(key)
  end

  def entries
    @hash_map.keys
  end

  def length
    @hash_map.length
  end

  def load_factor
    @hash_map.load_factor
  end

  def capacity
    @hash_map.capacity
  end
end
