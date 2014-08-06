#!/usr/bin/env ruby -w

def shortest_repetition(str)
  candidate = ''
  str.each_char do |c|
    candidate << c
    return candidate.length if repeatable?(str, candidate)
  end
end

def repeatable?(str, candidate)
  repeat_num = str.length / candidate.length
  str == candidate * repeat_num
end

ARGF.each_line do |line|
  puts shortest_repetition(line.chomp)
end
