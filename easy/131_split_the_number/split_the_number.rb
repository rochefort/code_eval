#!/usr/bin/env ruby -w

def extract_operators(number, pattern)
  operator = pattern.scan(/[+|-]/).join
  operator_position = pattern.index(/[+|-]/)
  x = number[0...operator_position].to_i
  y = number[operator_position..-1].to_i
  [x, y, operator]
end

ARGF.each_line do |line|
  number, pattern = line.chomp.split
  x, y, operator = extract_operators(number, pattern)
  puts operator == '+' ? (x + y) : (x - y)
end
