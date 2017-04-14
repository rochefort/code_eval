#!/usr/bin/env ruby -w

ARGF.each_line do |line|
  timestamps = line.chomp.split.sort.reverse
  puts timestamps.join(" ")
end
