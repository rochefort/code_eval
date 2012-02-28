#!/usr/bin/env ruby

ARGF.lines do |line|
  elm = line.split(/\s/).instance_eval{ |x| x[0..-2][-x.last.to_i] }
  puts elm if elm
end
