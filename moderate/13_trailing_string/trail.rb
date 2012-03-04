#!/usr/bin/env ruby
ARGF.lines do |line|
  puts line.chomp.split(',').instance_eval{ |main, trail| main.match(/#{trail}$/)? 1 : 0 }
end
