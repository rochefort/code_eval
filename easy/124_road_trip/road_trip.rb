#!/usr/bin/env ruby -w

ARGF.each_line do |line|
  distances = [0]
  distances += line.chomp.split(';').map { |point| point.split(',')[1].to_i }
  distances.sort!
  puts distances.map.with_index { |distance, i|
    next_value = distances[i + 1]
    next_value ? next_value - distance : nil
  }.compact.join(',')
end
