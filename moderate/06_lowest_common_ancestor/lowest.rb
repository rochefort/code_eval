#!/usr/bin/env ruby
class Node
  attr_accessor :value, :left, :right

  def initialize(value)
    @value = value
    @left, @right = nil, nil
  end
  
  def ancestor(n)
    return value if (left and n == left.value) or (right and n == right.value)

    left.ancestor(n).instance_eval{ |v| return v if v } if left
    right.ancestor(n).instance_eval{ |v| return v if v } if right
  end

  def ancestors(n, arr=[])
    anc = ancestor(n)
    return arr unless anc

    arr << anc
    ancestors(anc, arr)
  end
end

tree = Node.new(30)
tree.left = Node.new(8)
tree.left.left = Node.new(3)
tree.left.right = Node.new(20)
tree.left.right.left = Node.new(10)
tree.left.right.right = Node.new(29)
tree.right = Node.new(52)

ARGF.lines do |line|
  a, b = line.split(/\s/).map(&:to_i)
  puts (tree.ancestors(a) & tree.ancestors(b)).first
end


=begin
>> pp tree
#<Node:0x007fdf5a8936b8
 @left=
  #<Node:0x007fdf5a88e7d0
   @left=#<Node:0x007fdf5a8887b8 @left=nil, @right=nil, @value=3>,
   @right=
    #<Node:0x007fdf5a8827f0
     @left=#<Node:0x007fdf5a87c378 @left=nil, @right=nil, @value=10>,
     @right=#<Node:0x007fdf5a8755c8 @left=nil, @right=nil, @value=29>,
     @value=20>,
   @value=8>,
 @right=#<Node:0x007fdf5a868238 @left=nil, @right=nil, @value=52>,
 @value=30>

tree.ancestor 8
tree.ancestor 3
tree.ancestor 29
tree.ancestor 10

tree.ancestors 29

tree.ancestors 8
tree.ancestors 52

tree.ancestors 3
tree.ancestors 29
=end