#!/usr/bin/env ruby

def describe_self?(n)
  n.chars.each_with_index do |s, i|
    return 0 unless n.scan(i.to_s).size == s.to_i
  end
  1
end

ARGF.lines do |line|
  puts describe_self?(line.chomp)
end
