#!/usr/bin/env ruby
ARGF.lines do |line|
  puts line.to_i.to_s 2
end
