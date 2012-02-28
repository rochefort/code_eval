#!/usr/bin/env ruby

ARGF.lines do |line|
  first, second = line.chomp.split(';').map{|x| x.split(',')}
  puts (first & second).join(',')
end
