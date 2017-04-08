#!/usr/bin/env ruby -w

def stepwise(word)
  word.each_char.with_index.inject([]) do |result, (char, i)|
    mask = "#{'*' * i}"
    result << "#{mask}#{char}"
  end
end

ARGF.each_line do |line|
  words = line.chomp.split
  max_length_word = words.max_by(&:size)
  puts stepwise(max_length_word).join(" ")
end
