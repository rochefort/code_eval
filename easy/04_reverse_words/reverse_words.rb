#!/usr/bin/env ruby

ARGF.each_line do |line|
  puts line.split(' ').reverse.join(' ')
end
