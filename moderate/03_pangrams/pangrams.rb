#!/usr/bin/env ruby

ALL_ALPHABET = [*'a'..'z']

def unused_letters(str)
  ALL_ALPHABET - str.downcase.split(//).uniq
end

ARGF.lines do |line|
  diff = unused_letters(line.chomp)
  puts diff.size.zero? ? 'NULL' : diff.join
end