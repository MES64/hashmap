# frozen_string_literal: true

require_relative 'lib/node'

node1 = Node.new('Alice', 38)
p node1
node2 = Node.new('Bob', 26, node1)
p node2
