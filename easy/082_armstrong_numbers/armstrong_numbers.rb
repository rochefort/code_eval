#!/usr/bin/env ruby -w

def armstrong_numbers(n)
  digit = n.size
  sum = 0
  n.each_char do |c|
    sum += c.to_i ** digit
  end
  (sum == n.to_i).to_s.capitalize
end

ARGF.each_line do |line|
  puts armstrong_numbers(line.chomp)
end
