#!/usr/bin/env ruby

def non_repeated_char(str)
  #str.chars.inject(Hash.new(0)){|h, val| h[val]+=1;h}.select{|k,v| v==1}.keys
  str.chars.find{|s| str.count(s) == 1}
end

ARGF.lines do |line|
  puts non_repeated_char(line.chomp)
end

