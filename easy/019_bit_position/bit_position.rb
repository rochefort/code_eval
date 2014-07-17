#!/usr/bin/env ruby

ARGVF.lines do |line|
  a,p1,p2 = line.split(',').map(&:to_i)
  puts ((a >> (p1-1)) & 1) == ((a >> (p2-1)) & 1)
end
