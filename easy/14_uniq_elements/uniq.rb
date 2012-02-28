#!/usr/bin/env ruby

ARGF.lines do |line|
  puts line.chomp.split(',').uniq.join(',')
end
