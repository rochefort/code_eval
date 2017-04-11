#!/usr/bin/env ruby -w

ARROWS = [">>-->", "<--<<"]

def count_arrows(str)
  ARROWS.inject(0) do |count, arrow|
    count += count_all_pattern(str, arrow)
  end
end

def count_all_pattern(str, pattern)
  i = 0
  count = 0
  str_size = str.size
  while i < str_size
    index = str.index(pattern, i)
    unless index.nil?
      i = index
      count += 1
    end
    i += 1
  end
  count
end

ARGF.each_line do |line|
  puts count_arrows(line.chomp)
end
