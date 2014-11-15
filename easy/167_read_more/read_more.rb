#!/usr/bin/env ruby -w
def read_more(line)
  return line if line.size <= 55

  line = line[0...40]
  last_space_idx = line.rindex(' ')
  line = line[0...last_space_idx] if last_space_idx
  line + '... <Read More>'
end

ARGF.each_line do |line|
  puts read_more(line.chomp)
end
