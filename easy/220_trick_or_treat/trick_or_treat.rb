#!/usr/bin/env ruby -w

ARGF.each_line do |line|
  line.chomp.split(",").map { |pair| pair.split(":") }
  v, z, w, h = line.chomp.split(",").map { |pair| pair.split(":")[1].strip.to_i }
  children_number = (v + z + w)
  trick_number = h * (v * 3 + z * 4 + w * 5)
  puts trick_number / children_number
end
