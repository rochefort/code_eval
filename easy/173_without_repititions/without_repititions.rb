#!/usr/bin/env ruby -w

ARGF.each_line do |line|
  puts line.chomp.split(" ").map(&:squeeze).join(" ")
end
