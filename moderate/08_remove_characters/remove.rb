#!/usr/bin/env ruby

ARGF.lines do |line|
  main, removes = line.split(',').map(&:strip)
  puts removes.chars.inject(main){ |str, char| str.gsub(char, '') }
end
