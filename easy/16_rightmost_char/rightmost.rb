#!/usr/bin/env ruby

ARGF.lines do |line|
  str, char = line.chomp.split(',')
  puts str.rindex(char) || -1
end
