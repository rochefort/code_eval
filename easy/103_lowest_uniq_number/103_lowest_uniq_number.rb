#!/usr/bin/env ruby -w

def lowest_uniq_number(numbers)
  hash = {}
  numbers.each do |n|
    hash[n] ||= 0
    hash[n] += 1
  end
  hash.select { |_k, v| v == 1 }.keys.min
end

ARGF.each_line do |line|
  numbers = line.chomp.split.map(&:to_i)
  min_uniq_number =  lowest_uniq_number(numbers)
  if min_uniq_number
    puts(numbers.find_index(lowest_uniq_number(numbers)) + 1)
  else
    puts 0
  end
end
