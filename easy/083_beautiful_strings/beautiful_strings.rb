#!/usr/bin/env ruby -w
# Credits: This problem appeared in the Facebook Hacker Cup 2013 Hackathon.

def beautiful_string(str)
  chars = number_by_chars(str)

  sum = 0
  chars.sort_by{ |_k,v| -v }.each_with_index do |hash, i|
    sum += (26 - i) * hash.last
  end
  sum
end

def number_by_chars(str)
  chars = {}
  str.downcase.gsub(/[^a-z]/, '').each_char do |c|
    chars[c] ||= 0
    chars[c] += 1
  end
  chars
end

ARGF.each_line do |line|
  puts beautiful_string(line.chomp)
end
