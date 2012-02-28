#!/usr/bin/env ruby

open(ARGV[0]).each do |line|
  puts line.each_char.inject(0){ |sum, s| sum += s.to_i}
end
