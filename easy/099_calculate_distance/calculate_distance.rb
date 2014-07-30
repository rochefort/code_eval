#!/usr/bin/env ruby -w

def calculate_distance(x1, y1, x2, y2)
  Math.sqrt((x1 - x2)**2 + (y1 - y2)**2).to_i
end

ARGF.each_line do |line|
  x1, y1, x2, y2 = line.chomp.scan(/-?\d+/).map(&:to_i)
  puts calculate_distance(x1, y1, x2, y2)
end
