#!/usr/bin/env ruby -w

def word_to_digit(word)
  case word
  when 'zero' then 0
  when 'one' then 1
  when 'two' then 2
  when 'three' then 3
  when 'four' then 4
  when 'five' then 5
  when 'six' then 6
  when 'seven' then 7
  when 'eight' then 8
  when 'nine' then 9
  end
end

ARGF.each_line do |line|
  puts line.chomp.split(';').map { |word|
    word_to_digit(word)
  }.join
end
