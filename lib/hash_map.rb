# frozen_string_literal: true

require_relative 'linked_list'

# HashMap contains the buckets array, load factor, capacity, and length
# Methods: set, get, has?, remove, length, clear, keys, values, entries, and read load factor and capacity
# This implementation only works for string keys
class HashMap
  attr_reader :length, :load_factor, :capacity

  def initialize(load_factor = 0.8, capacity = 16)
    @load_factor = load_factor
    @capacity = capacity
    clear
  end

  def clear
    @buckets = Array.new(@capacity) { LinkedList.new }
    @length = 0
  end

  def set(key, value)
    @length += 1 unless has?(key)
    buckets[hash(key) % @capacity].insert(key, value)
    grow if need_to_grow?
  end

  def get(key)
    buckets[hash(key) % @capacity].retrieve(key)
  end

  def has?(key)
    buckets[hash(key) % @capacity].contains?(key)
  end

  def remove(key)
    @length -= 1 if has?(key)
    buckets[hash(key) % @capacity].delete(key)
  end

  def entries
    @buckets.map(&:key_value_pairs).flatten(1)
  end

  def keys
    keys_only = entries.transpose[0]
    keys_only.nil? ? [] : keys_only
  end

  def values
    values_only = entries.transpose[1]
    values_only.nil? ? [] : values_only
  end

  private

  def buckets
    lambda do |index|
      raise IndexError if index.negative? || index >= @capacity

      @buckets[index]
    end
  end

  def hash(key)
    hash_code = 0
    prime_number = 31

    key.each_char { |char| hash_code = hash_code * prime_number + char.ord }

    hash_code
  end

  def need_to_grow?
    @length > @load_factor * @capacity
  end

  def grow
    old_entries = entries
    @capacity *= 2
    clear
    old_entries.each { |key, value| set(key, value) }
  end
end
