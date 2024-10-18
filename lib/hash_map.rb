# frozen_string_literal: true

require_relative 'linked_list'

# HashMap contains the buckets array
# Methods: set, get, has?, remove, length, clear, keys, values, entries
# This implementation only works for string keys
class HashMap
  def initialize
    @buckets = Array.new(16) { LinkedList.new }
  end

  def set(key, value)
    buckets[hash(key) % @buckets.length].insert(key, value)
  end

  def get(key)
    buckets[hash(key) % @buckets.length].retrieve(key)
  end

  def has?(key)
    !get(key).nil?
  end

  def remove(key)
    buckets[hash(key) % @buckets.length].delete(key)
  end

  def entries
    @buckets.map(&:key_value_pairs).flatten(1)
  end

  private

  def buckets
    lambda do |index|
      raise IndexError if index.negative? || index >= @buckets.length

      @buckets[index]
    end
  end

  def hash(key)
    hash_code = 0
    prime_number = 31

    key.each_char { |char| hash_code = hash_code * prime_number + char.ord }

    hash_code
  end
end
