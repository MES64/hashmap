# frozen_string_literal: true

require_relative 'linked_list'

# HashMap contains the buckets array
# Methods: set, get, has?, remove, length, clear, keys, values, entries
# This implementation only works for string keys
class HashMap
  LOAD_FACTOR = 0.8

  attr_reader :length

  def initialize(capacity = 16)
    @buckets = Array.new(capacity) { LinkedList.new }
    @length = 0
  end

  def set(key, value)
    @length += 1 unless has?(key)
    buckets[hash(key) % @buckets.length].insert(key, value)
  end

  def get(key)
    buckets[hash(key) % @buckets.length].retrieve(key)
  end

  def has?(key)
    !get(key).nil?
  end

  def remove(key)
    @length -= 1 if has?(key)
    buckets[hash(key) % @buckets.length].delete(key)
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

  def clear
    initialize
  end

  def need_to_grow?
    @length >= LOAD_FACTOR * @buckets.length
  end

  def grow
    puts @buckets.length
    old_entries = entries
    initialize(@buckets.length * 2)
    old_entries.each { |key, value| set(key, value) }
    puts @buckets.length
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
