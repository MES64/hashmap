# frozen_string_literal: true

require_relative 'linked_list'

# HashMap contains the buckets array
# Methods: set, get, has?, remove, length, clear, keys, values, entries
class HashMap
  def initialize
    @buckets = Array.new(16)
  end
end
