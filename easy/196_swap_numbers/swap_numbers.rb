#!/usr/bin/env ruby -w

def swap_numbers(line)
  line.split.map do |word|
    first = word[0]
    last = word[-1]
    word[0] = last
    word[-1] = first
    word
  end.join(" ")
end

ARGF.each_line do |line|
  puts swap_numbers(line.chomp)
end
