#!/usr/bin/env ruby -w

ARGF.each_line do |line|
  puts(line.chomp[-1].to_i.even? ? 1 : 0)
end
