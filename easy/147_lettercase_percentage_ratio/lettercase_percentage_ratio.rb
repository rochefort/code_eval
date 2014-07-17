#!/usr/bin/env ruby -w

def letteracase_percentage_ratio(letters)
  total_size = letters.size
  lower_size = 0
  letters.each_char do |char|
    lower_size += 1 if char.match(/[a-z]/)
  end

  lower_percent = (lower_size / total_size.to_f) * 100.0
  upper_percent = 100 - lower_percent
  "lowercase: %.2f uppercase: %.2f" % [lower_percent, upper_percent]
end

ARGF.each_line do |line|
  puts letteracase_percentage_ratio(line.chomp)
end
