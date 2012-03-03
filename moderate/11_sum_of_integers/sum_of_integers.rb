#!/usr/bin/env ruby

def sum_of(integers)
  sums_all = []
  integers.each_with_index do |_, i|
    integers[i..-1].inject(0) do |sum, integer|
      sums_all << sum += integer
      sum
    end
  end
  sums_all.max
end

ARGF.lines do |line|
  puts sum_of(line.chomp.split(',').map(&:to_i))
end

