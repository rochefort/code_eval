#!/usr/bin/env ruby -w

def major_element(numbers)
  half_count = numbers.size / 2
  h = Hash.new(0)
  numbers.each do |number|
    h[number] += 1
    return number if h[number] > half_count
  end
  nil
end

ARGF.each_line do |line|
  numbers = line.chomp.split(',')
  puts(major_element(numbers) || 'None')
end
