#!/usr/bin/env ruby -w

def show_hidden_word(word)
  val = word.each_char.map { |char|
    if char.to_i.to_s == char
      char.to_i
    else
      ('a'..'j').to_a.index(char)
    end
  }.join
  val.empty? ? 'NONE' : val
end

ARGF.each_line do |line|
  puts show_hidden_word(line.chomp)
end
