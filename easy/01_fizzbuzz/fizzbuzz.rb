#!/usr/bin/env ruby

def fizzbuzz(a, b, n)
  rtn = ''
  rtn << 'F' if (n%a).zero?
  rtn << 'B' if (n%b).zero?
  rtn.empty? ? n : rtn
end

ARGF.lines do |line|
  a, b, max = line.split(' ').map(&:to_i)
  puts (1..max).map { |n| fizzbuzz(a,b,n) }.join(" ")
end

