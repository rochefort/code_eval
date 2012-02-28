#!/usr/bin/env ruby

def multiple_num(x, n)
  i = 1
  i += 1 until x <= n*i
  n*i
end

ARGF.lines do |line|
  x,n =line.split(',').map(&:to_i)
  puts multiple_num(x, n)
end

