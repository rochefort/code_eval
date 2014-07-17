#!/usr/bin/env ruby

def happy?(n, checked=[])
  return 1 if n == 1
  checked << n
  square_sum = n.to_s.each_char.map{|x| x.to_i**2}.inject(:+)
  return 0 if checked.include? square_sum
  happy?(square_sum, checked)
end

ARGF.lines do |line|
  puts happy?(line.chomp.to_i)
end

