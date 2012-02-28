#!/usr/bin/env ruby

fizzbuzz = ->a,b,n{
  ret = ""
  ret << 'F' if (n%a).zero?
  ret << 'B' if (n%b).zero?
  ret.empty? ? n : ret
}.curry

ARGF.lines do |line|
  a, b, max = line.split(' ').map(&:to_i)
  puts (1..max).map { |n| fizzbuzz[a,b,n] }.join(" ")
end
