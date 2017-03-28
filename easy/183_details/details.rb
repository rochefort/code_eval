#!/usr/bin/env ruby -w

def y_moving_size(lines)
  min_size = lines.first.size
  lines.each do |line|
    x_index = line.rindex("X")
    y_index = line.index("Y")
    size = y_index - x_index - 1
    min_size = size if size < min_size
    return 0 if min_size == 0
  end
  min_size
end

ARGF.each_line do |line|
  puts y_moving_size(line.chomp.split(","))
end
