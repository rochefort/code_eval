#!/usr/bin/env ruby -w

def multyplys(list_x, list_y)
  res = []
  list_x.zip(list_y) do |x, y|
    res << x * y
  end
  res.join(' ')
end

ARGF.each_line do |line|
  x, y = line.chomp.split('|').map(&:split)
  x.map!(&:to_i)
  y.map!(&:to_i)
  puts multyplys(x, y)
end
