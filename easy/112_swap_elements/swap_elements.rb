#!/usr/bin/env ruby -w

def swap_elements(numbers, instractions)
  instractions.each do |instraction|
    from, to = instraction.split('-').map(&:to_i)
    numbers[from], numbers[to] = numbers[to], numbers[from]
  end
  numbers.join(' ')
end

ARGF.each_line do |line|
  numbers, instractions = line.chomp.split(':')
  numbers = numbers.split
  instractions = instractions.split(',').map(&:strip)

  puts swap_elements(numbers, instractions)
end
