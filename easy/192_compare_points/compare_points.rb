#!/usr/bin/env ruby -w

def direction_from_points(x1, y1, x2, y2)
  distance_x = x2 - x1
  distance_y = y2 - y1
  return "here" if distance_x.zero? && distance_y.zero?
  direction = ""
  direction << (distance_y > 0 ? "N" : "S") unless distance_y.zero?
  direction << (distance_x > 0 ? "E" : "W") unless distance_x.zero?
  direction
end

ARGF.each_line do |line|
  points = line.chomp.split.map(&:to_i)
  puts direction_from_points(*points)
end
