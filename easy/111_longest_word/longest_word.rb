#!/usr/bin/env ruby -w

def detect_longest_word(words)
  longest_word = ''
  words.each do |word|
    longest_word = word if longest_word.length < word.length
  end
  longest_word
end

ARGF.each_line do |line|
  puts detect_longest_word(line.chomp.split)
end
