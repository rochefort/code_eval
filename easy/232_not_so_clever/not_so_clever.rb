#!/usr/bin/env ruby -w

def stupid_sort(numbers, iteration_number)
  iteration_number.times { sort_once!(numbers) }
  numbers
end

def sort_once!(numbers)
  numbers.each_with_index do |n, i|
    x = numbers[i]
    y = numbers[i + 1]
    if x > y
      numbers[i] = y
      numbers[i + 1] = x
      return numbers
    end
  end
end

ARGF.each_line do |line|
  _numbers, _iteration_number = line.chomp.split(" | ")
  numbers = _numbers.split.map(&:to_i)
  iteration_number = _iteration_number.to_i
  puts stupid_sort(numbers, iteration_number).join(" ")
end
