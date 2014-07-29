#!/usr/bin/env ruby -w

ARGF.each_line do |line|
  name_string, keys = line.chomp.split('|')

  puts keys.split.map { |key| name_string[key.to_i - 1] }.join
end
