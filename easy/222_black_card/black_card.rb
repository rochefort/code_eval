#!/usr/bin/env ruby -w

def black_card(names, number)
  while names.size > 1
    names.delete_at((number - 1) % names.size)
  end
  names[0]
end

ARGF.each_line do |line|
  name_str, number_str = line.chomp.split(" | ")
  names = name_str.split
  number = number_str.to_i
  puts black_card(names, number)
end
