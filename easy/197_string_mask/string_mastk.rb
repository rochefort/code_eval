#!/usr/bin/env ruby -w
def decode(str, binary_mask)
  binary_mask.each_char.with_index do |b, i|
    str[i] = str[i].upcase if b == "1"
  end
  str
end

ARGF.each_line do |line|
  str, binary_mask = line.chomp.split
  puts decode(str, binary_mask)
end
