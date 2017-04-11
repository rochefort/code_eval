#!/usr/bin/env ruby -w
def clenup(words)
  words.gsub(/[^A-Za-z]/, " ").downcase.split.join(" ")
end

ARGF.each_line do |line|
  puts clenup(line.chomp)
end
