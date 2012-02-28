#!/usr/bin/env ruby

fizzbuzz = ->(a, b, n) {
  rtn = ''
  rtn << 'F' if (n%a).zero?
  rtn << 'B' if (n%b).zero?
  rtn.empty? ? n : rtn
}.curry

ARGF.lines do |line|
  a, b, max = line.split(' ').map(&:to_i)
  fb = fizzbuzz[a,b]
  puts (1..max).map { |n| fb.call(n) }.join(" ")
  #puts (1..max).map { |n| fb[n] }.join(" ")
end

