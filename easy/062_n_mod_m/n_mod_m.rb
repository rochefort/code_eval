#!/usr/bin/env ruby -w

ARGF.each_line do |line|
  n, m = line.chomp.split(',').map(&:to_i)
  puts n.modulo(m)
end
