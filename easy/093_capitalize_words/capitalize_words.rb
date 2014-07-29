#!/usr/bin/env ruby -w

def capitalize_word(word)
  word[0].capitalize + word[1..-1]
end

ARGF.each_line do |line|
  puts line.chomp.split.map { |word| capitalize_word(word) }.join(' ')
end
