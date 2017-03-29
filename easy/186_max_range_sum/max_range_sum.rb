#!/usr/bin/env ruby -w

def max_profit(n, incomes)
  (0..(incomes.size - n)).inject(0) do |max_sum, i|
    [max_sum, incomes[i, n].inject(&:+)].max
  end
end

ARGF.each_line do |line|
  day, data = line.chomp.split(";")
  incomes = data.split.map(&:to_i)
  puts max_profit(day.to_i, incomes)
end
